package Dec.domain;

import java.io.Serializable;

/**
 * @author this
 * @date 2021年12月17日 20:46
 */
public class Customer implements Serializable {

    private Integer id;
    private String name;
    private String author;
    private String type;
    private String detial;
    private Double price;
    private Integer total;

    public Customer() {
    }

    public Customer(Integer id, String name, String author, String type, String detial, Double price, Integer total) {
        this.id = id;
        this.name = name;
        this.author = author;
        this.type = type;
        this.detial = detial;
        this.price = price;
        this.total = total;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDetial() {
        return detial;
    }

    public void setDetial(String detial) {
        this.detial = detial;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", author='" + author + '\'' +
                ", type='" + type + '\'' +
                ", detial='" + detial + '\'' +
                ", price=" + price +
                ", total=" + total +
                '}';
    }
}
