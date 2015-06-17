package wach;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class WACH_Bean { 
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	/* MySQL 연결정보 */
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1:3306/jspdb"; 
	
	// DB연결 메서드
	void connect() {
		try {
			Class.forName(jdbc_driver);

			conn = DriverManager.getConnection(jdbc_url,"jspbook","mysql");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} 
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/* 전체 매장 위치 정보를 가져오는 메서드 */
	public ArrayList<WACH_Define> getStores() {
		
		connect();
		ArrayList<WACH_Define> datas = new ArrayList<WACH_Define>();
		
		String sql = "select * from stores";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				WACH_Define wach = new WACH_Define();
				
				wach.setStore_id(rs.getInt("st_id"));
				wach.setStore_name(rs.getString("st_name"));
				wach.setStore_location(rs.getString("st_location"));
				wach.setStore_phoneNum(rs.getString("st_phoneNum"));
				wach.setStore_class(rs.getString("st_class"));
				datas.add(wach);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
	
	/* 전체 메뉴 정보를 가져오는 메서드 */
	public ArrayList<WACH_Define> getMenu() {
		
		connect();
		ArrayList<WACH_Define> datas = new ArrayList<WACH_Define>();
		
		String sql = "select * from menu";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				WACH_Define wach = new WACH_Define();
				
				wach.setMenu_id(rs.getInt("m_id"));
				wach.setMenu_name(rs.getString("m_name"));
				wach.setMenu_enName(rs.getString("m_enName"));
				wach.setMenu_price(rs.getInt("m_price"));
				wach.setMenu_picture(rs.getString("m_picture"));
				wach.setMenu_compose(rs.getString("m_compose"));
				wach.setMenu_cookTime(rs.getInt("m_cookTime"));
				wach.setMenu_detail(rs.getString("m_detail"));
				wach.setMenu_catID(rs.getInt("m_catID"));
				
				datas.add(wach);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return datas;
	}
	
	/* 전체 메뉴 정보를 가져오는 메서드 */
	public ArrayList<SideMenu> getSideMenu() {
		
		connect();
		ArrayList<SideMenu> side_datas = new ArrayList<SideMenu>();
		
		String sql = "select * from sideMenu";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				SideMenu wach = new SideMenu();
				
				wach.setSideMenu_id(rs.getInt("s_id"));
				wach.setSideMenu_name(rs.getString("s_name"));
				wach.setSideMenu_picture(rs.getString("s_picture"));
				
				side_datas.add(wach);
			}
			rs.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			disconnect();
		}
		return side_datas;
	}
}