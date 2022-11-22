package Crwaling.Weekly;

public class CrwalingWeeklyDTO {
    @Override
    public String toString() {
        return "CrwalingWeeklyDTO{" +
                "Startdate='" + Startdate + '\'' +
                ", Enddate='" + Enddate + '\'' +
                ", Head_Weekly='" + Head_Weekly + '\'' +
                ", Largest1_Weekly='" + Largest1_Weekly + '\'' +
                ", Largest2_Weekly='" + Largest2_Weekly + '\'' +
                ", Largest3_Weekly='" + Largest3_Weekly + '\'' +
                ", Largest4_Weekly='" + Largest4_Weekly + '\'' +
                ", Largest5_Weekly='" + Largest5_Weekly + '\'' +
                ", Entire_Weekly='" + Entire_Weekly + '\'' +
                ", Code_News='" + Code_News + '\'' +
                ", Name_News='" + Name_News + '\'' +
                '}';
    }

    private String Startdate;
    private String Enddate;
    private String Head_Weekly;
    private String Largest1_Weekly;
    private String Largest2_Weekly;
    private String Largest3_Weekly;
    private String Largest4_Weekly;
    private String Largest5_Weekly;
    private String Entire_Weekly;
    private String Code_News;
    private String Name_News;

    public String getStartdate() {
        return Startdate;
    }

    public void setStartdate(String startdate) {
        Startdate = startdate;
    }

    public String getEnddate() {
        return Enddate;
    }

    public void setEnddate(String enddate) {
        Enddate = enddate;
    }

    public String getHead_Weekly() {
        return Head_Weekly;
    }

    public void setHead_Weekly(String head_Weekly) {
        Head_Weekly = head_Weekly;
    }

    public String getLargest1_Weekly() {
        return Largest1_Weekly;
    }

    public void setLargest1_Weekly(String largest1_Weekly) {
        Largest1_Weekly = largest1_Weekly;
    }

    public String getLargest2_Weekly() {
        return Largest2_Weekly;
    }

    public void setLargest2_Weekly(String largest2_Weekly) {
        Largest2_Weekly = largest2_Weekly;
    }

    public String getLargest3_Weekly() {
        return Largest3_Weekly;
    }

    public void setLargest3_Weekly(String largest3_Weekly) {
        Largest3_Weekly = largest3_Weekly;
    }

    public String getLargest4_Weekly() {
        return Largest4_Weekly;
    }

    public void setLargest4_Weekly(String largest4_Weekly) {
        Largest4_Weekly = largest4_Weekly;
    }

    public String getLargest5_Weekly() {
        return Largest5_Weekly;
    }

    public void setLargest5_Weekly(String largest5_Weekly) {
        Largest5_Weekly = largest5_Weekly;
    }

    public String getEntire_Weekly() {
        return Entire_Weekly;
    }

    public void setEntire_Weekly(String entire_Weekly) {
        Entire_Weekly = entire_Weekly;
    }

    public String getCode_News() {
        return Code_News;
    }

    public void setCode_News(String code_News) {
        Code_News = code_News;
    }

    public String getName_News() {
        return Name_News;
    }

    public void setName_News(String name_News) {
        Name_News = name_News;
    }
} //end of CrwalingWeeklyDTO class
