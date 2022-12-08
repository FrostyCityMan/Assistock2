package utility;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MyAuthenticator extends Authenticator {

    //사용하고자 하는 메일서버
    private PasswordAuthentication pa;

    public MyAuthenticator() {
        pa=new PasswordAuthentication("soldesk@pretyimo.cafe24.com","soldesk6901");

    }//end MyAuthenticator

    @Override
    protected PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }

}//end class
