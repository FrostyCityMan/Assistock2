package Crwaling.Now;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/")
public class CrwalingNowCont {
	public CrwalingNowCont() {
		System.out.println("CrwalingNowCont Start--------");
	}

	@Autowired
	CrawlingNowDAO Nowdao;

//    @RequestMapping(value="/",method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
//    @ResponseBody
//    public String wordCloud(HttpServletRequest request, HttpServletResponse response, CrwalingNowDTO CrwalingNowDTO) throws Exception {
//        List<CrwalingNowDTO> list = new
//
//
//    }

} //end of CrwalingNowCont class
