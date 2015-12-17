package jpabook.jpashop.web;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

/**
 * User: HolyEyE
 * Date: 13. 9. 11. Time: 오후 9:16
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(Model model) {

        return "home";
    }

    @ResponseBody
    @RequestMapping("/wait")
    public String wait(Model model) throws InterruptedException {

        Thread.sleep(1000);

        return "response";
    }

}
