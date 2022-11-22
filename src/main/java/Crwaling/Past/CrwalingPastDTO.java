package Crwaling.Past;

public class CrwalingPastDTO {
    public String getName_News() {
        return Name_News;
    }

    public void setName_News(String name_News) {
        Name_News = name_News;
    }

    public String getURL_Past() {
        return URL_Past;
    }

    public void setURL_Past(String URL_Past) {
        this.URL_Past = URL_Past;
    }

    public String getDate_Past() {
        return Date_Past;
    }

    public void setDate_Past(String date_Past) {
        Date_Past = date_Past;
    }

    public String getHead_Past() {
        return Head_Past;
    }

    public void setHead_Past(String head_Past) {
        Head_Past = head_Past;
    }

    public String getLargest1_Past() {
        return Largest1_Past;
    }

    public void setLargest1_Past(String largest1_Past) {
        Largest1_Past = largest1_Past;
    }

    public String getLargest2_Past() {
        return Largest2_Past;
    }

    public void setLargest2_Past(String largest2_Past) {
        Largest2_Past = largest2_Past;
    }

    public String getLargest3_Past() {
        return Largest3_Past;
    }

    public void setLargest3_Past(String largest3_Past) {
        Largest3_Past = largest3_Past;
    }

    public String getLargest4_Past() {
        return Largest4_Past;
    }

    public void setLargest4_Past(String largest4_Past) {
        Largest4_Past = largest4_Past;
    }

    public String getLargest5_Past() {
        return Largest5_Past;
    }

    public void setLargest5_Past(String largest5_Past) {
        Largest5_Past = largest5_Past;
    }

    public String getEntire_Past() {
        return Entire_Past;
    }

    public void setEntire_Past(String entire_Past) {
        Entire_Past = entire_Past;
    }

    private String Name_News;
     private String URL_Past;
     private String Date_Past;
     private String Head_Past;
     private String Largest1_Past;
     private String Largest2_Past;
     private String Largest3_Past;
     private String Largest4_Past;
     private String Largest5_Past;
     private String Entire_Past;

    public String getCode_News() {
        return Code_News;
    }

    public void setCode_News(String code_News) {
        Code_News = code_News;
    }

    @Override
    public String toString() {
        return "CrwalingPastDTO{" +
                "Name_News='" + Name_News + '\'' +
                ", URL_Past='" + URL_Past + '\'' +
                ", Date_Past='" + Date_Past + '\'' +
                ", Head_Past='" + Head_Past + '\'' +
                ", Largest1_Past='" + Largest1_Past + '\'' +
                ", Largest2_Past='" + Largest2_Past + '\'' +
                ", Largest3_Past='" + Largest3_Past + '\'' +
                ", Largest4_Past='" + Largest4_Past + '\'' +
                ", Largest5_Past='" + Largest5_Past + '\'' +
                ", Entire_Past='" + Entire_Past + '\'' +
                ", Code_News='" + Code_News + '\'' +
                '}';
    }

    private String Code_News;
} //end of CrwalingPastDTO class
