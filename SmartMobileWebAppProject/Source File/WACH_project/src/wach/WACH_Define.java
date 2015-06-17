package wach;

public class WACH_Define {
	
	// Menu 멤버변수 선언 :: 메뉴 정보
	private int m_id;
	private String m_name;
	private String m_enName;
	private int m_price;
	private String m_picture;
	private String m_compose;
	private int m_cookTime;
	private String m_detail;
	private int m_catID;
	
	// stores 멤버변수 선언 :: 매장 지역별 매장 위치 및 전화번호 정보
	private int st_id;
	private String st_name;
	private String st_location;
	private String st_phoneNum;
	private String st_class;
	public int getMenu_id() {
		return m_id;
	}
	
	/* Menu Section */
	public void setMenu_id(int m_id) {
		this.m_id = m_id;
	}
	
	public String getMenu_name() {
		return m_name;
	}
	public void setMenu_name(String m_name) {
		this.m_name = m_name;
	}
	
	public String getMenu_enName() {
		return m_enName;
	}
	public void setMenu_enName(String m_enName) {
		this.m_enName = m_enName;
	}
	
	public int getMenu_price() {
		return m_price;
	}
	public void setMenu_price(int m_price) {
		this.m_price = m_price;
	}
	
	public String getMenu_picture() {
		return m_picture;
	}
	public void setMenu_picture(String m_picture) {
		this.m_picture = m_picture;
	}
	
	public String getMenu_compose() {
		return m_compose;
	}
	public void setMenu_compose(String m_compose) {
		this.m_compose = m_compose;
	}
	
	public int getMenu_cookTime() {
		return m_cookTime;
	}
	public void setMenu_cookTime(int m_cookTime) {
		this.m_cookTime = m_cookTime;
	}
	
	public String getMenu_detail() {
		return m_detail;
	}
	public void setMenu_detail(String m_detail) {
		this.m_detail = m_detail;
	}
	
	public int getMenu_catID() {
		return m_catID;
	}
	public void setMenu_catID(int m_catID) {
		this.m_catID = m_catID;
	}
	
	/* End of the Menu Section */
	
	/* Store Section */
	
	public int getStore_id() {
		return st_id;
	}
	public void setStore_id(int st_id) {
		this.st_id = st_id;
	}
	
	public String getStore_name() {
		return st_name;
	}
	public void setStore_name(String st_name) {
		this.st_name = st_name;
	}
	
	public String getStore_location() {
		return st_location;
	}
	public void setStore_location(String st_location) {
		this.st_location = st_location;
	}
	
	public String getStore_phoneNum() {
		return st_phoneNum;
	}
	public void setStore_phoneNum(String st_phoneNum) {
		this.st_phoneNum = st_phoneNum;
	}
	
	public String getStore_class() {
		return st_class;
	}
	public void setStore_class(String st_class) {
		this.st_class = st_class;
	}
	
	/* End of the Store Section */
}

