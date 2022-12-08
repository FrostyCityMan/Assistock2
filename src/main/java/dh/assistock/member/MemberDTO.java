package dh.assistock.member;

import lombok.*;

import java.util.Date;
@Getter
@ToString
@Setter
public class MemberDTO {

    public MemberDTO(String name_Register, String email, String ID, String PW, String class_Member, Date date_Sub, String name_Member, Date date_Join, String tel) {
        Name_Register = name_Register;
        Email = email;
        this.ID = ID;
        this.PW = PW;
        Class_Member = class_Member;
        Date_Sub = date_Sub;
        Name_Member = name_Member;
        Date_Join = date_Join;
        Tel = tel;
    }

    private String Name_Register;
    private String Email;

    public MemberDTO(String email, String ID, String PW) {
        Email = email;
        this.ID = ID;
        this.PW = PW;
    }

    public MemberDTO(String ID, String PW) {
        this.ID = ID;
        this.PW = PW;
    }

    private String ID;
    private String PW;
    private String Class_Member;
    private Date Date_Sub;
    private String Name_Member;
    private Date Date_Join;
    private String Tel;
} //end of MemberDTO class
