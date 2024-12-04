package Bai3;

public class Student {
    private String name;
    private String studentID;
    private double averageScore;
    private String status;

    public Student(String name, String studentID, double averageScore, String status){
        this.name = name;
        this.studentID = studentID;
        this.averageScore = averageScore;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public double getAverageScore() {
        return averageScore;
    }

    public void setAverageScore(double averageScore) {
        this.averageScore = averageScore;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
