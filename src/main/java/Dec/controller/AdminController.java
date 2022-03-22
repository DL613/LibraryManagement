package Dec.controller;

import Dec.domain.Book;
import Dec.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 20:06
 */
@Controller("adminController")
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/adminLogin")
    public String admin(Model model) {

        List<Book> books = adminService.allBooks();

        model.addAttribute("books", books);

        return "admin";
    }

    @RequestMapping("/toAddPage")
    public String toAddPage() {

        return "add";
    }

    @RequestMapping("/adminAdd")
    public String adminAdd(Book book) {
        if(book.getName().length()>40||book.getAuthor().length()>40||book.getType().length()>40){
            return "addError";
        }
        adminService.addBook(book);
        return "redirect:/admin/adminLogin";
    }

    @RequestMapping("/adminToSearch")
    public String toSearch(String name, Model model) {

        List<Book> books = adminService.findByName(name);

        model.addAttribute("books", books);

        return "adminSearch";
    }

    /*
    返回所有图书页面
     */
    @RequestMapping("/returnAll")
    public String returnAll() {
        return "redirect:/admin/adminLogin";
    }

    @RequestMapping("/toEditPage")
    public String toEdit(Integer id, Model model) {

        Book book = adminService.adMindById(id);

        model.addAttribute("book", book);

        return "edit";
    }

    @RequestMapping("/saveEdit")
    public String saveEdit(Book book) {

        adminService.editBook(book);

        return "redirect:/admin/adminLogin";
    }

    @RequestMapping("/adminDelete")
    public String adminDelete(Integer id) {

        adminService.deleteBook(id);

        adminService.deletePrimary();
        adminService.addPrimary();

        return "redirect:/admin/adminLogin";
    }

    @RequestMapping("/returnLogin")
    public String returnLogin() {
        return "login";
    }

}
