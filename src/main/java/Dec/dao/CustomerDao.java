package Dec.dao;

import Dec.domain.Book;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author this
 * @date 2021年12月17日 20:47
 */
@Repository("customerDao")
public interface CustomerDao {

    /*
    查询用户所有
     */
    @Select("select * from customer")
    List<Book> CustomerBooks();

    /*
    查询图书馆所有
     */
    @Select("select * from book")
    List<Book> AllBooks();

    /*
    通过书名查找自己的书籍
     */
    @Select("select * from customer where name = #{name}")
    List<Book> findByNameInMine(String name);

    /*
    通过书名查找图书馆书籍
     */
    @Select("select * from book where name = #{name}")
    List<Book> findByNameInLibrary(String name);

    /*
    借书
     */
    @Insert("insert into customer(name,author,type,detial,price,total) values(#{name},#{author},#{type},#{detial},#{price},#{total})")
    void borrowBook(Book book);
    /*
        通过id查找图书馆书籍
         */
    @Select("select * from book where id=#{id}")
    Book CustomerFindByIdInLibrary(Integer id);
    /*
        通过id查找书架书籍
         */
    @Select("select * from customer where id=#{id}")
    Book CustomerFindByIdInCustomer(Integer id);

    /*
    还书
     */
    @Delete("delete from customer where id=#{id}")
    void returnBook(Integer id);

    /*
    删除用户表主键
     */
    @Update("alter table customer drop column id")
    void deletePrimary();


    /*
    添加用户表主键
     */
    @Update("alter table customer add id int unsigned not Null auto_increment primary key")
    void addPrimary();
}
