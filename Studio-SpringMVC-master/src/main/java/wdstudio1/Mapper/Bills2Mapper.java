package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.Bills2;

public class Bills2Mapper implements RowMapper<Bills2>{

	@Override
	public Bills2 mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills2 bills2 = new Bills2();
		bills2.setId(rs.getInt("id"));
		bills2.setUser(rs.getString("user"));
		bills2.setPhone(rs.getString("phone"));
		bills2.setDisplay_name(rs.getString("display_name"));
		bills2.setAddress(rs.getString("address"));
		bills2.setTotal(rs.getDouble("total"));
		bills2.setQuanty(rs.getInt("quanty"));
		bills2.setNote(rs.getString("note"));
		return bills2;
	}

}
