package Bai6;

public class Ticket {
    private String ticketID;
    private String movieName;
    private String showTime;
    private double price;

    public Ticket(String ticketID, String movieName, String showTime, double price){
        this.ticketID = ticketID;
        this.movieName = movieName;
        this.showTime = showTime;
        this.price = price;
    }

    public String getTicketID() {
        return ticketID;
    }

    public void setTicketID(String ticketID) {
        this.ticketID = ticketID;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
