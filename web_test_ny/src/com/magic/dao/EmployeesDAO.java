package com.magic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.magic.dto.EmployeesVO;

public class EmployeesDAO {
	private EmployeesDAO(){
		
	}
	
	private static EmployeesDAO instance = new EmployeesDAO();
	
	public static EmployeesDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:/comp/env/jdbc/OracleDB");
		conn = ds.getConnection();
		return conn;
	}
	
	public int userCheck(String eid, String pwd, String lev) {
		int result = 1;
		Connection conn = null;
		String sql = "SELECT * FROM employees WHERE eid = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (pwd.equals(rs.getString("pass"))) {
					if (lev.equals(rs.getString("lev"))) {
						result = 2;
						if (lev.equals("B")) {
							result = 3;
						}
					} else {
						// 레벨 불일치
						result = 1;
					}
				} else {
					// 비밀번호 불일치
					result = 0;
				}
			} else {
				// 아이디 불일치
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public EmployeesVO getMember(String eid) {
		EmployeesVO eVO = null;
		String sql = "SELECT * FROM employees WHERE eid = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, eid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				eVO = new EmployeesVO();
				eVO.setEid(rs.getString("eid"));
				eVO.setPass(rs.getString("pass"));
				eVO.setEname(rs.getString("ename"));
				eVO.setLev(rs.getString("lev"));
				eVO.setEnter(rs.getDate("enter"));
				eVO.setGender(rs.getInt("gender"));
				eVO.setPhone(rs.getString("phone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return eVO;
	}
}
