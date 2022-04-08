package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.BillDetail2;

public class Billdetail2Mapper implements RowMapper<BillDetail2>{

	@Override
	public BillDetail2 mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail2 billdetail2 = new BillDetail2();
		billdetail2.setId(rs.getInt("id"));
		billdetail2.setId_anhcuoi(rs.getInt("id_anhcuoi"));
		billdetail2.setId_bills2(rs.getInt("id_bills2"));
		billdetail2.setQuanty(rs.getInt("quanty"));
		billdetail2.setTotal(rs.getDouble("total"));
		return billdetail2;
	}

}
