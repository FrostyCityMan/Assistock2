package Crwaling.Weekly;

import lombok.*;

@Getter
@ToString
@Builder
public class CrwalingWeeklyDTO {

@Builder
    public CrwalingWeeklyDTO(String startdate, String enddate, String entire_Weekly) {
        Startdate = startdate;
        Enddate = enddate;
        Entire_Weekly = entire_Weekly;
    }

    private String Startdate;
    private String Enddate;
    private String Entire_Weekly;
} //end of CrwalingWeeklyDTO class
