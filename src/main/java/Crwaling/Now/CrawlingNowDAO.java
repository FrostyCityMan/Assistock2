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
import java.text.SimpleDateFormat;

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
//            List<CrwalingNowDTO> list_Stock = sql.selectList("Word.Name(Stock)");
            Map<String, Integer> map_word = new HashMap<>();
//            Map<String, String> map_Stock = new HashMap<>();
            for (int a = 0; a < list_Word.size(); a++) {
                CrwalingNowDTO dto = list_Word.get(a);
                map_word.put(dto.getWord(), dto.getScore());
            }
//            for (int b = 0; b < list_Stock.size(); b++) {
//                CrwalingNowDTO dto = list_Stock.get(b);
//                map_Stock.put(dto.getName_Stock(), dto.getClass_Item());
//
//            }

            for (int i = 0; i < list.size(); i++) {
                CrwalingCacheDTO dto = list.get(i);

                KomoranResult analyzeResultList = komoran.analyze(dto.getHead_Now());
                List<String> nounList = analyzeResultList.getNouns();
                String noun = nounList.toString();
                Set<String> set = new HashSet<String>(nounList);
                int score =0;
                try {
                    for (int c = 0; c < list_Word.size(); c++) {
                        score += map_word.get( nounList.get(c));
                    }//end of scoring for
                } catch (Exception e) {

                }// end of Scoring try-catch
                System.out.println(score);


//                sql.insert("Now.insert", new CrwalingNowDTO(dto.getName_News(), stock, item, dto.getURL_Now(),
//                        dto.getDate_Now(), dto.getHead_Now(), dto.getEntire_Now(), score);

                System.out.println(dto.getHead_Now() + " 몇개? " + dto.getEntire_Now_number() / dto.getLargest5_Now_number());
            }//end of for
        } catch (Exception e) {
            System.out.println("분석실패" + e);
        } //end of try-catch
    }//end of psvm
} //end of CrawlingNowDAO class
