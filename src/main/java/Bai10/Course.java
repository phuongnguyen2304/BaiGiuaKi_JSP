package Bai10;

public class Course {
    private String name;
    private String instructor;
    private int hours;
    private double price;

    public Course(String name, String instructor, int hours, double price){
        this.name = name;
        this.instructor = instructor;
        this.hours = hours;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
