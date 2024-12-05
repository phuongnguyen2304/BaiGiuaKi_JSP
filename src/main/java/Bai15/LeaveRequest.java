package Bai15;

public class LeaveRequest {
    private String employeeName;
    private String startDate;
    private String endDate;
    private String status;

    public LeaveRequest(String employeeName,String startDate,String endDate,String status){
        this.employeeName = employeeName;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
