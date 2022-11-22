package Crwaling.Now;

public class CrwalingNowDTO {


    public String getName_News() {
        return Name_News;
    }

    public void setName_News(String name_News) {
        Name_News = name_News;
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

    public String getURL_Now() {
        return URL_Now;
    }

    public void setURL_Now(String URL_Now) {
        this.URL_Now = URL_Now;
    }

    public String getDate_Now() {
        return Date_Now;
    }

    public void setDate_Now(String date_Now) {
        Date_Now = date_Now;
    }

    public String getHead_Now() {
        return Head_Now;
    }

    public void setHead_Now(String head_Now) {
        Head_Now = head_Now;
    }

    public String getEntire_Now() {
        return Entire_Now;
    }

    public void setEntire_Now(String entire_Now) {
        Entire_Now = entire_Now;
    }

    public String getWord() {
        return Word;
    }

    public void setWord(String word) {
        Word = word;
    }

    public int getScore() {
        return Score;
    }

    public void setScore(int score) {
        Score = score;
    }

    public CrwalingNowDTO(String name_News, String name_Stock, String class_Item, String URL_Now, String date_Now, String head_Now, String entire_Now, int score) {
        Name_News = name_News;
        Name_Stock = name_Stock;
        Class_Item = class_Item;
        this.URL_Now = URL_Now;
        Date_Now = date_Now;
        Head_Now = head_Now;
        Entire_Now = entire_Now;
        Score = score;
    }

    @Override
    public String toString() {
        return "CrwalingNowDTO{" +
                "Name_News='" + Name_News + '\'' +
                ", Name_Stock='" + Name_Stock + '\'' +
                ", Class_Item='" + Class_Item + '\'' +
                ", URL_Now='" + URL_Now + '\'' +
                ", Date_Now='" + Date_Now + '\'' +
                ", Head_Now='" + Head_Now + '\'' +
                ", Entire_Now='" + Entire_Now + '\'' +
                ", Word='" + Word + '\'' +
                ", Score=" + Score +
                '}';
    }

    private String Name_News;
    private String Name_Stock;
    private String Class_Item;
    private String URL_Now;
    private String Date_Now;
    private String Head_Now;
    private String Entire_Now;

    public CrwalingNowDTO(String word, int score) {
        this.Word = word;
        this.Score = score;
    }

    private String Word;
    private int Score;


} //end of CrwalingNowDTO class
