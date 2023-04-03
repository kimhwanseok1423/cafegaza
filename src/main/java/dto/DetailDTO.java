package dto;

public class DetailDTO {
	//순위
	private String guId;
	//카페이름
	private String cafeName;
	//카페사진경로
	private String cafePhoto;
	//카페위치
	private String category;
	
	private String cafetime;
	
	private String cafephone;
	
	private String cafeAddress;
	
	private String cafestar;
public DetailDTO() {
	// TODO Auto-generated constructor stub
}


	public String getGuId() {
	return guId;
}


public void setGuId(String guId) {
	this.guId = guId;
}


public String getCafeName() {
	return cafeName;
}


public void setCafeName(String cafeName) {
	this.cafeName = cafeName;
}


public String getCafePhoto() {
	return cafePhoto;
}


public void setCafePhoto(String cafePhoto) {
	this.cafePhoto = cafePhoto;
}


public String getCategory() {
	return category;
}


public void setCategory(String category) {
	this.category = category;
}


public String getCafetime() {
	return cafetime;
}


public void setCafetime(String cafetime) {
	this.cafetime = cafetime;
}


public String getCafephone() {
	return cafephone;
}


public void setCafephone(String cafephone) {
	this.cafephone = cafephone;
}


public String getCafeAddress() {
	return cafeAddress;
}


public void setCafeAddress(String cafeAddress) {
	this.cafeAddress = cafeAddress;
}


public String getCafestar() {
	return cafestar;
}


public void setCafestar(String cafestar) {
	this.cafestar = cafestar;
}


	@Override
	public String toString() {
		return "DetailDTO [guId=" + guId + ", cafeName=" + cafeName + ", cafePhoto=" + cafePhoto + ", category="
				+ category + ",cafetime =" +cafetime + ",cafephone =" +cafephone +"cafestar=" + cafestar +"cafeAddress=" + cafeAddress + "]";
	}

}
