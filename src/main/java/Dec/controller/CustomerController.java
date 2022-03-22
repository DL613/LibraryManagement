package Dec.controller;

import Dec.domain.Book;
import Dec.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 20:06
 */
@Controller("customerController")
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/customerLogin")
    public String customer(Model model) {

        List<Book> books = customerService.AllBooks();

        model.addAttribute("books", books);

        return "customer";
    }

    @RequestMapping("/toMinePage")
    public String toMine(Model model) {

        List<Book> books = customerService.CustomerBooks();

        model.addAttribute("books", books);

        return "mine";
    }

    @RequestMapping("/returnCustomer")
    public String returnCustomer() {
        return "redirect:/customer/customerLogin";
    }

    @RequestMapping("/findLibrary")
    public String findLibrary(String name,Model model) {

        List<Book> books = customerService.findByNameInLibrary(name);

        model.addAttribute("books", books);

        return "search";
    }
    @RequestMapping("/returnLibrary")
    public String returnLibrary() {

        return "redirect:/customer/customerLogin";
    }

    @RequestMapping("/findCustomer")
    public String findCustomer(String name, Model model) {

        List<Book> books = customerService.findByNameInMine(name);

        model.addAttribute("books", books);

        return "customerSearch";
    }

    @RequestMapping("/returnMine")
    public String returnMine() {

        return "redirect:/customer/toMinePage";
    }

    @RequestMapping("/returnBook")
    public String returnBook(Integer id) {

        customerService.returnBook(id);

        customerService.deletePrimary();
        customerService.addPrimary();

        return "redirect:/customer/toMinePage";
    }

    @RequestMapping("/borrowBook")
    public String borrowBook(Integer id) {

        Book book = customerService.CustomerFindByIdInLibrary(id);
        customerService.borrowBook(book);

        return "redirect:/customer/toMinePage";
    }

}
