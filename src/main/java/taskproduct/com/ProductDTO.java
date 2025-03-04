package taskproduct.com;



public class ProductDTO {
	
	private int pid;
	private String pname;
	private String pbrand;
	private double pcost;
	public ProductDTO(int pid, String pname, String pbrand, double pcost) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pbrand = pbrand;
		this.pcost = pcost;
	}
	public ProductDTO() {
		
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public double getPcost() {
		return pcost;
	}
	public void setPcost(double pcost) {
		this.pcost = pcost;
	}
	
	

}