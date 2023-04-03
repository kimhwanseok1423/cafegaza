package dto;

public class TopDTO {
	//회원나이
	private int age;
	//순위
	private int num;
	//카페이름
	private String cafename;
	//카페사진경로
	private String cafeurl;
	//카페위치
	private String cafelocation;
	
	public TopDTO() {
		// TODO Auto-generated constructor stub
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getCafename() {
		return cafename;
	}

	public void setCafename(String cafename) {
		this.cafename = cafename;
	}

	public String getCafeurl() {
		return cafeurl;
	}

	public void setCafeurl(String cafeurl) {
		this.cafeurl = cafeurl;
	}

	public String getCafelocation() {
		return cafelocation;
	}

	public void setCafelocation(String cafelocation) {
		this.cafelocation = cafelocation;
	}
	@Override
	public String toString() {
		return "TopDTO[age="+age+"num"+num+"cafename"+cafename+"cafeurl"+
					cafeurl+"cafelocation"+cafelocation+"]";
	}
	

}
