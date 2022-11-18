import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

    @Controller
    public class HomeController {
        public HomeController(){
            System.out.println("HomeController created");

        }// end of Test

        @RequestMapping("/")
        public ModelAndView home() {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("index");
            System.out.println(mav.toString());
            return mav;

        }//end of home
} //end of HomeController class
