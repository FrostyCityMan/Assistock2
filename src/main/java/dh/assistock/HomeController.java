package dh.assistock;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

    @Controller
    public class HomeController {
        public HomeController(){
            System.out.println("dh.assistock.HomeController created------");

        }// end of Test

        @RequestMapping("/")
        public ModelAndView home() {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("index");
            System.out.println(mav.toString());
            return mav;

        }//end of home
        @RequestMapping("/Pricing")
        public ModelAndView pricing() {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("/pricing/pricing");
            System.out.println(mav.toString());
            return mav;

        }
        @RequestMapping("/login")
        public ModelAndView loginform() {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("/member/loginForm");
            System.out.println(mav.toString());
            return mav;
        }
        @RequestMapping("/about")
        public ModelAndView about() {
            ModelAndView mav=new ModelAndView();
            mav.setViewName("about");
            System.out.println(mav.toString());
            return mav;
        }

} //end of dh.assistock.HomeController class
