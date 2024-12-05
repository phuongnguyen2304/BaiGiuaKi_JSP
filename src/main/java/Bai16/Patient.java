package Bai16;

public class Patient {
    private String name;
    private int age;
    private String disease;
    private String admissionDate;
    private String status;

    public Patient(String name, int age,String disease,String admissionDate,String status){
        this.name = name;
        this.age = age;
        this.disease = disease;
        this.admissionDate = admissionDate;
        this.status = status;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease;
    }

    public String getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        this.admissionDate = admissionDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
