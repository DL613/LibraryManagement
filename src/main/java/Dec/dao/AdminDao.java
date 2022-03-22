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
 * @date 2021年12月17日 19:57
 */
@Repository("adminDao")
public interface AdminDao {

    /*
    查询所有
     */
    @Select("select * from book")
    List<Book> AllBooks();

    /*
    添加书籍
     */
    @Insert("insert into book(name,author,type,detial,price,total) values(#{name},#{author},#{type},#{detial},#{price},#{total})")
    void addBook(Book book);


    /*
    通过书名查找书籍
     */
    @Select("select * from book where name = #{name}")
    List<Book> findByName(String name);


    /*
    编辑书籍
     */
    @Update("update book set name = #{name},author=#{author},type=#{type}, detial=#{detial},price=#{price},total=#{total} where id=#{id}")
    void editBook(Book book);

    /*
    通过id查找书籍
     */
    @Select("select * from book where id=#{id}")
    Book adMindById(Integer id);

    /*
    删除书籍
     */
    @Delete("delete from book where id=#{id}")
    void deleteBook(Integer id);


    //2. 系统功能

    /*
    删除主键
     */
    @Update("alter table book drop column id")
    void deletePrimary();


    /*
    添加主键
     */
    @Update("alter table book add id int unsigned not Null auto_increment primary key")
    void addPrimary();
}
