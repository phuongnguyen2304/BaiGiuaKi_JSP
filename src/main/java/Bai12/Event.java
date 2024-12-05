package Bai12;

public class Event {
    private String name;
    private String dateTime;
    private String location;
    private int participants;

    public Event(String name, String dateTime, String location, int participants){
        this.name = name;
        this.dateTime = dateTime;
        this.location = location;
        this.participants = participants;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getParticipants() {
        return participants;
    }

    public void setParticipants(int participants) {
        this.participants = participants;
    }
}
