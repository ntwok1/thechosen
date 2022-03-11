/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gwtech.thechosen.admin.Controller;

import gwtech.thechosen.admin.Entity.Account;
import gwtech.thechosen.admin.Service.SAccount;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author nguye
 */
@Controller
public class AccountController {
    
    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public ModelAndView ViewLogin() {
        ModelAndView mv = new ModelAndView("ai/pages/login");
        mv.addObject("loginform", new Account());
        return mv;
    }
    
    @Autowired
    public SAccount acc = new SAccount();
    
    @RequestMapping(value = "/admin/log-in", method = RequestMethod.POST)
    public ModelAndView Login(HttpServletRequest request, HttpSession session, @ModelAttribute("loginform") Account user) {
        ModelAndView mv = new ModelAndView();
        user = acc.checkAccount(user);
        if (user != null) {
            session.setAttribute("LoginInfo", user);
            mv.setViewName("redirect:home");
        } else {
            mv.setViewName("ai/pages/login");
            mv.addObject("status", "Thất Bại");
        }
        return mv;
    }
}
