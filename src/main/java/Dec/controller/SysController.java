package Dec.controller;

import Dec.domain.User;
import Dec.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 22:45
 */
@Controller("sysController")
@RequestMapping("/home")
public class SysController {

    @Autowired
    private UserService us;

    @RequestMapping("/login")
    public String login() {

        return "login";
    }

    @RequestMapping("/toLogin")
    public String toLogin(String username, String password, Model model) {

        List<User> users = us.findUserByName(username);

        if(users==null){
            return "error";
        }

        for (User user : users) {
            if(user.getUsername().equals(username)&&user.getPassword().equals(password)&&user.getIdentity().equals("管理员")){
                model.addAttribute("username",username);
                return "redirect:/admin/adminLogin";
            }if(user.getUsername().equals(username)&&user.getPassword().equals(password)&&user.getIdentity().equals("普通用户")){
                model.addAttribute("username",username);
                return "redirect:/customer/customerLogin";
            }
        }

        return "error";
    }
}
