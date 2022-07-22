package com.nayeon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.nayeon.dto.ItemVO;

import util.DBManager;

public class ItemDAO {
   private ItemDAO() {
   }

   private static ItemDAO instance = new ItemDAO();

   public static ItemDAO getInstance() {
      return instance;
   }
   
	public List<ItemVO> selectAllProducts() {
		List<ItemVO> list = new ArrayList<ItemVO>();
		
		String sql = "select * from item order by code desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) { 	// 이동은 행(로우) 단위로
				ItemVO iVo = new ItemVO();
				iVo.setCode(rs.getInt("code"));
				iVo.setIname(rs.getString("iname"));
				iVo.setPrice(rs.getInt("price"));
				iVo.setPictureurl(rs.getString("pictureurl"));
				iVo.setDescription(rs.getString("description"));
				list.add(iVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		
		return list;
   }
	
	public void insertItem(ItemVO iVo) {
		String sql = "insert into item values(item_seq.nextval, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, iVo.getIname());
			pstmt.setInt(2, iVo.getPrice());
			pstmt.setString(3, iVo.getPictureurl());
			pstmt.setString(4, iVo.getDescription());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public ItemVO selectItemByCode(String code) {
		String sql = "select * from item where code=?";
		ItemVO iVo = null;
		
		try {
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, code);
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					iVo = new ItemVO();
					iVo.setCode(rs.getInt("code"));
					iVo.setIname(rs.getString("iname"));
					iVo.setPrice(rs.getInt("price"));
					iVo.setPictureurl(rs.getString("pictureurl"));
					iVo.setDescription(rs.getString("description"));
				}
			} catch (Exception e) {
				e.getStackTrace();
			} finally {
				DBManager.close(conn, pstmt, rs);
			}
		} catch (Exception e) {
			e.getStackTrace();
		}
		
		return iVo;
	}
	
	public void updateItem(ItemVO iVo) {
		String sql = "update item set iname=?, price=?, pictureurl=?, description=? where code=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, iVo.getIname());
			pstmt.setInt(2, iVo.getPrice());
			pstmt.setString(3, iVo.getPictureurl());
			pstmt.setString(4, iVo.getDescription());
			pstmt.setInt(5, iVo.getCode());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	
	public void deleteItem(String code) {
		String sql = "delete item where code=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.getStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
}
