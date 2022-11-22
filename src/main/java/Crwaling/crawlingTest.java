package Crwaling;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.List;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
public class crawlingTest {
    public static void main(String[] args) {
        // 연습) 솔데스크 웹페이지에서 공지사항 제목만 크롤링해서
        // soldesk.txt파일에 저장하기
        // https://soldesk.com/board/board_bagic/board_list.asp?scrID=0000000173&pageNum=8&subNum=1&ssubNum=1&page=3&bd_num=&act=list&s_string=
        Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);
        try {
            String filename = "D:/java202207/backend/JAVA/soldesk(문장 추출).txt";
            FileWriter fw = new FileWriter(filename, true);
            PrintWriter pw = new PrintWriter(fw, true);
            String URL = "https://soldesk.com/board/board_bagic/board_list.asp?scrID=0000000173&pageNum=8&subNum=1&ssubNum=1&page=";
            for (int p = 1; p <= 8; p++) {
                String num = p + "&bd_num=&act=list&s_string=";
                Document doc = Jsoup.connect(URL + num).get();
                Elements elem = doc.select(".td_left");

                elem.select(".td_m_date").remove();
                for (Element element : elem) {

                    pw.println(element.text());
                    // KomoranResult analyzeResultList = komoran.analyze(element.text());
                    // List<String> nounList = analyzeResultList.getNouns();
                    //
                    // for(String noun : nounList) {
                    // System.out.println(noun);
                    // pw.println(noun);
                    // }//end for 명사추출
                } // end for element
            } // end for p
            pw.close();
            fw.close();
        } catch (Exception e) {
            System.out.println("Crawling Failed");
            // TODO: handle exception
        } // end try-catch

    }// end main
} //end of crawlingTest class
