package dh.assistock.member;


import org.springframework.stereotype.Repository;
import utility.MyAuthenticator;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.security.SecureRandom;
import java.util.Date;
import java.util.Properties;


@Repository
public class MemberService {
    public String generateRandomPassword(int len) {
        // ASCII range – alphanumeric (0-9, a-z, A-Z)
        final String chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        SecureRandom random = new SecureRandom();
        StringBuilder sb = new StringBuilder();

        // each iteration of the loop randomly chooses a character from the given
        // ASCII range and appends it to the `StringBuilder` instance

        for (int i = 0; i < len; i++) {
            int randomIndex = random.nextInt(chars.length());
            sb.append(chars.charAt(randomIndex));
        }

        return sb.toString();
    }

    public void sendMail(MemberDTO dto){
        String email = dto.getEmail();
        try {
            String mailsever = "mw-002.cafe24.com";
            Properties props = new Properties();
            props.put("mail.smtp.host", mailsever);
            props.put("mail.smtp.auth", true);
            Authenticator myAuth = new MyAuthenticator();
            Session sess = Session.getInstance(props, myAuth);
            String to = email;
            String from = "assistock@naver.com";
            String subject = "비밀번호 찾기 결과";
            String content = dto.getPW();

            InternetAddress[] address = {new InternetAddress(to)};
            Message message = new MimeMessage(sess);
            message.setRecipients(Message.RecipientType.TO, address);
            message.setFrom(new InternetAddress(from,"어시스톡"));
            message.setSubject(subject);
            message.setContent( dto.getID()+"님의 바뀐 비밀번호는 : "+content+" 입니다.", "text/html;charset=UTF-8");
            message.setSentDate(new Date());
            Transport.send(message);
            System.out.println("PW 이메일전송 完");
        } catch (Exception e) {
            System.out.println(e.getClass().getName() + " 예외가" + e.getMessage() + " 때문에 발생");

        }

    }

} //end of MemberService class
