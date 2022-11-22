package Crwaling.Cache;


import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


import java.io.FileWriter;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.*;
import java.text.SimpleDateFormat;
import java.util.stream.Collectors;

public class CrwalingCacheDAO {

    public CrwalingCacheDAO() {
        System.out.println("CrwalingCache Start-----------");
    }


    public static void main(String[] args) {
        Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
        try {
            String resource = "config/CrwalingCacheConfig.xml";
            InputStream is = Resources.getResourceAsStream(resource);
            SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(is);
            System.out.println("-------DB연결 성공");
            SqlSession sql = ssf.openSession(true);


            String filename = "D:\\java202207\\Assistock\\src\\main\\webapp\\storage\\News(문장 추출).txt";
            FileWriter fw = new FileWriter(filename, true);
            PrintWriter pw = new PrintWriter(fw, true);
            //J<2에 한계점 만들어보자
            for (int j = 1; j < 7; j++) {
                Date now = new Date();
                SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
                String url = "https://news.naver.com/main/list.naver?mode=LS2D&mid=sec&sid1=101&sid2=263&listType=summary&date=" + sdf.format(now) + "&page=" + j;
                Document doc = Jsoup.connect(url).get();
                Elements elements = doc.getElementsByAttributeValue("class", "list_body newsflash_body");

                Element element = elements.get(0);
                Elements photoElements = element.getElementsByAttributeValue("class", "photo");

                for (int i = 0; i < photoElements.size(); i++) {
                    Element articleElement = photoElements.get(i);
                    Elements aElements = articleElement.select("a");
                    Element aElement = aElements.get(0);

                    String articleUrl = aElement.attr("href");        // 기사링크

                    Element imgElement = aElement.select("img").get(0);
                    String imgUrl = imgElement.attr("src");            // 사진링크
                    String title = imgElement.attr("alt");            // 기사제목
                    Document subDoc = Jsoup.connect(articleUrl).get();

                    Elements bElement = subDoc.getElementsByAttributeValue("class", "media_end_head_top");
                    Element comElement = bElement.select("img").get(0);
                    String comTitle = comElement.attr("alt");            // 신문사

                    Element contentElement = subDoc.getElementById("dic_area");
                    String content = contentElement.text();            // 기사내용
                    try {
                        KomoranResult analyzeResultList = komoran.analyze(content);
                        List<String> nounList = analyzeResultList.getNouns();
                        String noun = nounList.toString();
                        Set<String> set = new HashSet<String>(nounList);
                        Map<String, Integer> map = new HashMap<>();

                        for (String str : set) {
                            map.put(str, Collections.frequency(nounList, str));
                        }
                        List<String> listKeySet = new ArrayList<>(map.keySet());
                        Collections.sort(listKeySet, (value1, value2) -> (map.get(value2).compareTo(map.get(value1))));

                        sql.insert("Now.insert",
                                new CrwalingCacheDTO(comTitle, articleUrl, sdf.format(now), title, listKeySet.get(0),
                                        map.get(listKeySet.get(0)), listKeySet.get(1), map.get(listKeySet.get(1)),
                                        listKeySet.get(2), map.get(listKeySet.get(2))
                                        , listKeySet.get(3), map.get(listKeySet.get(3)),
                                        listKeySet.get(4), map.get(listKeySet.get(4)),
                                        listKeySet.toString(), listKeySet.toArray().length));// end of sql insert

                    } catch (Exception e) {
                        System.out.println("형태소 분석 오류" + e);
                    }//end of 형태소 try-catch
                }
                System.out.println(j + "page 크롤링 종료");
            }
        } catch (Exception e) {
            System.out.println("Crawling Failed" + e);
            // TODO: handle exception
        } // end try-catch
    }//end of main
} //end of CrwalingDAO class
