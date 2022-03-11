/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gwtech.thechosen.admin.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author nguye
 */
@Controller
public class HomeController {
     @RequestMapping(value = "/admin/home", method = RequestMethod.GET)
    public ModelAndView ViewHome() {
        return new ModelAndView("ai/pages/home");
    }
}
