package Bai1.JSP;

public class Product {
    private String name;
    private double price;
    private String description;
    private String imageURL;

    public Product(String name, double price, String description, String imageURL){
        this.name = name;
        this.price = price;
        this.description = description;
        this.imageURL = imageURL;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public double getPrice(){
        return price;
    }
    public void setPrice(double price){
        this.price = price;
    }
    public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }
    public String getImageURL(){
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }
}

