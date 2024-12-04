package Bai2;

public class Order {
    private int orderID;
    private String orderDate;
    private String customerName;
    private String status;

    public Order(int orderID,String orderDate, String customerName, String status){
        this.orderID = orderID;
        this.orderDate = orderDate;
        this.customerName = customerName;
        this.status = status;
    }
    public int getOrderID(){
        return orderID;
    }
    public void setOrderID(int orderID){
        this.orderID = orderID;
    }
    public String getOrderDate(){
        return orderDate;
    }
    public void setOrderDate(String orderDate){
        this.orderDate = orderDate;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
