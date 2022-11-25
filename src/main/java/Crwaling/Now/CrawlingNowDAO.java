package Crwaling.Now;

import Crwaling.Cache.CrwalingCacheDTO;

import kr.co.shineware.nlp.komoran.constant.DEFAULT_MODEL;
import kr.co.shineware.nlp.komoran.core.Komoran;
import kr.co.shineware.nlp.komoran.model.KomoranResult;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import java.io.InputStream;
import java.util.*;

public class CrawlingNowDAO {

    public static void main(String[] args) {
        Komoran komoran = new Komoran(DEFAULT_MODEL.FULL);

        try {
            String resource = "config/CrwalingNowConfig.xml";
            InputStream is = Resources.getResourceAsStream(resource);
            SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(is);
            System.out.println("-------DB연결 성공");
            SqlSession sql = ssf.openSession(true);
            List<CrwalingCacheDTO> list = sql.selectList("Word.Word");
            List<CrwalingNowDTO> list_Word = sql.selectList("Word.WordAnalysis");
            List<CrwalingCacheDTO> list_Stock = sql.selectList("Word.Name(Stock)");
            List<CrwalingNowDTO> list_Material = sql.selectList("Word.Material");

            Map<String, Integer> map_word = new HashMap<>();
            Map<String, String> map_Stock = new HashMap<>();
            Map<String, String> map_Material = new HashMap<>();

            for (int a = 0; a < list_Word.size(); a++) {
                CrwalingNowDTO dto = list_Word.get(a);
                map_word.put(dto.getWord(), dto.getScore());
            }
            for (int b = 0; b < list_Stock.size(); b++) {
                CrwalingCacheDTO dto = list_Stock.get(b);
                map_Stock.put(dto.getName_Stock(), dto.getClass_Item());
            }
            for (int c = 0; c < list_Material.size(); c++) {
                CrwalingNowDTO dto = list_Material.get(c);
                map_Material.put(dto.getName_Country(), dto.getClass_Item());
            }
            for (int i = 0; i < list.size(); i++) {
                CrwalingCacheDTO dto = list.get(i);
                KomoranResult analyzeResultList = komoran.analyze(dto.getEntire_Now());
                List<String> nounList = analyzeResultList.getNouns(); //전체분석

                int score = 0;
                try {
                    for (int c = 0; c < list_Word.size(); c++) {
                        if (map_word.get(nounList.get(c)) == null) {
                            score = score + 0;
                        } else {
                            score += map_word.get(nounList.get(c));
                        }
                    }//end of scoring for
                } catch (Exception e) {
                    System.out.println(e.getClass().getName() + " 예외가" + e.getMessage() + " 때문에 발생");
                }// end of Scoring try-catch
                String stock = " ";
                String item = null;
                String Country = " ";

                try {
                    for (int c = 0; c < nounList.size(); c++) {
                        if (nounList.contains("월드컵") || nounList.contains("축구")) {
                            break;
                        }
                        if (Objects.equals(dto.getClass_News(), "경제")
                                && map_Stock.get(nounList.get(c)) != null
                                && !Objects.equals(nounList.get(c), "대상")) {
                            stock = nounList.get(c);
                            item = map_Stock.get(nounList.get(c));
                            break;
                        }
                        if (Objects.equals(dto.getClass_News(), "세계")
                                && map_Material.get(nounList.get(c)) != null) {
                            Country = nounList.get(c);
                            item = map_Material.get(nounList.get(c));
                            break;
                        }
                    }//end of stock search for
                } catch (Exception e) {
                    System.out.println("경제 세계 구분에서 " + e.getClass().getName() + " 예외가" + e.getMessage() + " 때문에 발생");
                }//end of stock search try-catch

                try {
                    CrwalingNowDTO Word = CrwalingNowDTO.builder()
                            .name_News(dto.getName_News())
                            .name_Stock(stock)
                            .name_Country(Country)
                            .class_Item(item)
                            .URL_Now(dto.getURL_Now())
                            .date_Now(dto.getDate_Now())
                            .head_Now(dto.getHead_Now())
                            .entire_Now(dto.getEntire_Now())
                            .score(score)
                            .build();
                    sql.insert("Word.Word(Analysis)Insert", Word);
                } catch (Exception e) {
                    System.out.println("SQL 입력에서 " + e.getClass().getName() + " 예외가" + e.getMessage() + " 때문에 발생");
                }
            }//end of for
            int result = sql.delete("Word.delete");
        } catch (Exception e) {
            System.out.println(e.getClass().getName() + " 예외가" + e.getMessage() + " 때문에 발생");
        } //end of try-catch
    }//end of psvm
} //end of CrawlingNowDAO class
