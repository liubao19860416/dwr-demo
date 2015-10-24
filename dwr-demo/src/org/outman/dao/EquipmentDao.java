package org.outman.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.outman.domain.Equipment;

public class EquipmentDao {
	private final static String findAllEquipmentName = "select name from t_equipment";

	private final static String findAllEquipment = "select id,model,name,number,price from t_equipment";

	private final static String addEquipment = "insert into t_equipment(model,name,number,price) values(?,?,?,?)";

	public List<String> findAllEquipmentName() throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = DBUtils.openConnection();
			stmt = con.prepareStatement(findAllEquipmentName);
			rs = stmt.executeQuery();
			List<String> equipmentList = new ArrayList<String>();
			while (rs.next()) {
				equipmentList.add(rs.getString(1));
			}
			return equipmentList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			rs.close();
			stmt.close();
			con.close();
		}
	}

	public List<Equipment> findAllEquipment() throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = DBUtils.openConnection();
			stmt = con.prepareStatement(findAllEquipment);
			rs = stmt.executeQuery();
			List<Equipment> equipmentList = new ArrayList<Equipment>();
			while (rs.next()) {
				Equipment equipment = new Equipment();
				equipment.setId(rs.getInt(1));
				equipment.setModel(rs.getString(2));
				equipment.setName(rs.getString(3));
				equipment.setNumber(rs.getInt(4));
				equipment.setPrice(rs.getDouble(5));
				equipmentList.add(equipment);
			}
			return equipmentList;
		} catch (SQLException e) {
			e.printStackTrace();
			throw e;
		} finally {
			rs.close();
			stmt.close();
			con.close();
		}
	}

	public void addEquipment(Equipment e) throws Exception {
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			con = DBUtils.openConnection();
			stmt = con.prepareStatement(addEquipment);
			stmt.setString(1, e.getModel());
			stmt.setString(2, e.getName());
			stmt.setInt(3, e.getNumber());
			stmt.setDouble(4, e.getPrice());
			stmt.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
			throw e1;
		} finally {
			stmt.close();
			con.close();
		}

	}

	public static void main(String[] args) throws Exception {
		EquipmentDao dao = new EquipmentDao();
		System.out.println(dao.findAllEquipment());
	}
}
