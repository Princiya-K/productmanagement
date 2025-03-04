package taskproduct.com;

public class CustomerDTO {
    
    private String cname;
    private int cage;
    private String cemail;
    private String cpwd;
    private String ccontact;

    public CustomerDTO(String cname, int cage, String cemail, String cpwd, String ccontact) {
        super();
        this.cname = cname;
        this.cage = cage;
        this.cemail = cemail;
        this.cpwd = cpwd;
        this.ccontact = ccontact;
    }

    public CustomerDTO() {
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getCage() {
        return cage;
    }

    public void setCage(int cage) {
        this.cage = cage;
    }

    public String getCemail() {
        return cemail;
    }

    public void setCemail(String cemail) {
        this.cemail = cemail;
    }

    public String getCpwd() {
        return cpwd;
    }

    public void setCpwd(String cpwd) {
        this.cpwd = cpwd;
    }

    public String getCcontact() {
        return ccontact;
    }

    public void setCcontact(String ccontact) {
        this.ccontact = ccontact;
    }
}
