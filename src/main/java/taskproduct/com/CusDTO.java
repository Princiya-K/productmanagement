package taskproduct.com;


public class CusDTO {
	private String c_name;
	private int c_age;
	private String c_email;
	private String c_pwd;
	private Long c_cont;
	
	public CusDTO(String c_name, int c_age, String c_email, String c_pwd, Long c_cont) {
		super();
		this.c_name = c_name;
		this.c_age = c_age;
		this.c_email = c_email;
		this.c_pwd = c_pwd;
		this.c_cont = c_cont;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getC_age() {
		return c_age;
	}

	public void setC_age(int c_age) {
		this.c_age = c_age;
	}

	public String getC_email() {
		return c_email;
	}

	public void setC_email(String c_email) {
		this.c_email = c_email;
	}

	public String getC_pwd() {
		return c_pwd;
	}

	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}

	public Long getC_cont() {
		return c_cont;
	}

	public void setC_cont(Long c_cont) {
		this.c_cont = c_cont;
	}
	
	
	
	

}
