package Bai11;

public class Attendance {
    private String employeeName;
    private String workDate;
    private int hoursWorked;
    private String status;

    public Attendance(String employeeName, String workDate,int hoursWorked,String status){
        this.employeeName = employeeName;
        this.workDate = workDate;
        this.hoursWorked = hoursWorked;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getWorkDate() {
        return workDate;
    }

    public void setWorkDate(String workDate) {
        this.workDate = workDate;
    }

    public int getHoursWorked() {
        return hoursWorked;
    }

    public void setHoursWorked(int hoursWorked) {
        this.hoursWorked = hoursWorked;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
