package Dec.service;

import Dec.domain.Book;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 19:57
 */
public interface AdminService {

    //1.用户功能

    /*
    查询图书馆所有书籍
     */

    List<Book> allBooks();

    /*
    添加书籍
     */

    void addBook(Book book);


    /*
    通过书名查找书籍
     */

    List<Book> findByName(String name);


    /*
    编辑书籍
     */

    void editBook(Book book);


    /*
    删除书籍
     */

    void deleteBook(Integer id);

    /*
    通过id查找书籍
     */
    Book adMindById(Integer id);


    //2. 系统功能

    /*
    删除主键
     */
    void deletePrimary();


    /*
    添加主键
     */
    void addPrimary();
}
