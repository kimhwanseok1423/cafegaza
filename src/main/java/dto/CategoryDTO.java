package dto;

public class CategoryDTO {
	//�닚�쐞
	private String guId;
	//移댄럹�씠由�
	private String cafeName;
	//移댄럹�궗吏꾧꼍濡�
	private String cafePhoto;
	//移댄럹�쐞移�
	private String category;
	
	private String cafeAddress;
	
	private float catestar;
	

public CategoryDTO() {
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




public String getCafeAddress() {
	return cafeAddress;
}


public void setCafeAddress(String cafeAddress) {
	this.cafeAddress = cafeAddress;
}

	public float getCatestar() {
	return catestar;
}


public void setCatestar(float catestar) {
	this.catestar = catestar;
}


	@Override
	public String toString() {
		return "CategoryDTO [guId=" + guId + ", cafeName=" + cafeName + ", cafePhoto=" + cafePhoto + ", category="
				+ category +" cafeAddress=" + cafeAddress + " catestar=" + catestar + "]";
	}
	
}
