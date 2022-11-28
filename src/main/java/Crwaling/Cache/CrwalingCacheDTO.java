package Crwaling.Cache;

import java.util.Date;

public class CrwalingCacheDTO {

    public String getName_News() {
        return Name_News;
    }

    public void setName_News(String name_News) {
        Name_News = name_News;
    }

    public String getURL_Now() {
        return URL_Now;
    }

    public void setURL_Now(String URL_Now) {
        this.URL_Now = URL_Now;
    }

    public Date getDate_Now() {
        return Date_Now;
    }

    public void setDate_Now(Date date_Now) {
        Date_Now = date_Now;
    }

    public String getHead_Now() {
        return Head_Now;
    }

    public void setHead_Now(String head_Now) {
        Head_Now = head_Now;
    }

    public String getLargest1_Now() {
        return Largest1_Now;
    }

    public void setLargest1_Now(String largest1_Now) {
        Largest1_Now = largest1_Now;
    }

    public int getLargest1_Now_number() {
        return Largest1_Now_number;
    }

    public void setLargest1_Now_number(int largest1_Now_number) {
        Largest1_Now_number = largest1_Now_number;
    }

    public String getLargest2_Now() {
        return Largest2_Now;
    }

    public void setLargest2_Now(String largest2_Now) {
        Largest2_Now = largest2_Now;
    }

    public int getLargest2_Now_number() {
        return Largest2_Now_number;
    }

    public void setLargest2_Now_number(int largest2_Now_number) {
        Largest2_Now_number = largest2_Now_number;
    }

    public String getLargest3_Now() {
        return Largest3_Now;
    }

    public void setLargest3_Now(String largest3_Now) {
        Largest3_Now = largest3_Now;
    }

    public int getLargest3_Now_number() {
        return Largest3_Now_number;
    }

    public void setLargest3_Now_number(int largest3_Now_number) {
        Largest3_Now_number = largest3_Now_number;
    }

    public String getLargest4_Now() {
        return Largest4_Now;
    }

    public void setLargest4_Now(String largest4_Now) {
        Largest4_Now = largest4_Now;
    }

    public int getLargest4_Now_number() {
        return Largest4_Now_number;
    }

    public void setLargest4_Now_number(int largest4_Now_number) {
        Largest4_Now_number = largest4_Now_number;
    }

    public String getLargest5_Now() {
        return Largest5_Now;
    }

    public void setLargest5_Now(String largest5_Now) {
        Largest5_Now = largest5_Now;
    }

    public int getLargest5_Now_number() {
        return Largest5_Now_number;
    }

    public void setLargest5_Now_number(int largest5_Now_number) {
        Largest5_Now_number = largest5_Now_number;
    }

    public String getEntire_Now() {
        return Entire_Now;
    }

    public void setEntire_Now(String entire_Now) {
        Entire_Now = entire_Now;
    }

    public int getEntire_Now_number() {
        return Entire_Now_number;
    }

    public void setEntire_Now_number(int entire_Now_number) {
        Entire_Now_number = entire_Now_number;
    }

    public String getClass_News() {
        return Class_News;
    }

    public void setClass_News(String class_News) {
        Class_News = class_News;
    }


    public String getName_Stock() {
        return Name_Stock;
    }

    public void setName_Stock(String name_Stock) {
        Name_Stock = name_Stock;
    }

    public String getClass_Item() {
        return Class_Item;
    }

    public void setClass_Item(String class_Item) {
        Class_Item = class_Item;
    }

    public CrwalingCacheDTO(String name_Stock, String class_Item) {
        Name_Stock = name_Stock;
        Class_Item = class_Item;
    }

    @Override
    public String toString() {
        return "CrwalingCacheDTO{" +
                "Name_News='" + Name_News + '\'' +
                ", Name_Stock='" + Name_Stock + '\'' +
                ", Class_Item='" + Class_Item + '\'' +
                ", URL_Now='" + URL_Now + '\'' +
                ", Date_Now=" + Date_Now +
                ", Head_Now='" + Head_Now + '\'' +
                ", Largest1_Now='" + Largest1_Now + '\'' +
                ", Largest1_Now_number=" + Largest1_Now_number +
                ", Largest2_Now='" + Largest2_Now + '\'' +
                ", Largest2_Now_number=" + Largest2_Now_number +
                ", Largest3_Now='" + Largest3_Now + '\'' +
                ", Largest3_Now_number=" + Largest3_Now_number +
                ", Largest4_Now='" + Largest4_Now + '\'' +
                ", Largest4_Now_number=" + Largest4_Now_number +
                ", Largest5_Now='" + Largest5_Now + '\'' +
                ", Largest5_Now_number=" + Largest5_Now_number +
                ", Entire_Now='" + Entire_Now + '\'' +
                ", Entire_Now_number=" + Entire_Now_number +
                ", Class_News='" + Class_News + '\'' +
                '}';
    }

    private String Name_News;
    private String Name_Stock;
    private String Class_Item;
    private String URL_Now;
    private Date Date_Now;
    private String Head_Now;
    private String Largest1_Now;
    private int Largest1_Now_number;
    private String Largest2_Now;
    private int Largest2_Now_number;
    private String Largest3_Now;
    private int Largest3_Now_number;
    private String Largest4_Now;
    private int Largest4_Now_number;
    private String Largest5_Now;
    private int Largest5_Now_number;
    private String Entire_Now;
    private int Entire_Now_number;
    private String Class_News;

    public CrwalingCacheDTO(String name_News, String URL_Now, Date date_Now, String head_Now, String largest1_Now, int largest1_Now_number, String largest2_Now, int largest2_Now_number, String largest3_Now, int largest3_Now_number, String largest4_Now, int largest4_Now_number, String largest5_Now, int largest5_Now_number, String entire_Now, int entire_Now_number, String class_News) {
        Name_News = name_News;
        this.URL_Now = URL_Now;
        Date_Now = date_Now;
        Head_Now = head_Now;
        Largest1_Now = largest1_Now;
        Largest1_Now_number = largest1_Now_number;
        Largest2_Now = largest2_Now;
        Largest2_Now_number = largest2_Now_number;
        Largest3_Now = largest3_Now;
        Largest3_Now_number = largest3_Now_number;
        Largest4_Now = largest4_Now;
        Largest4_Now_number = largest4_Now_number;
        Largest5_Now = largest5_Now;
        Largest5_Now_number = largest5_Now_number;
        Entire_Now = entire_Now;
        Entire_Now_number = entire_Now_number;
        Class_News = class_News;
    }

} //end of CrwalingDTO class
