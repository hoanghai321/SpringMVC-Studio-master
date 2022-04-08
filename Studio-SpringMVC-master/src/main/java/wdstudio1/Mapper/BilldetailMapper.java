package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.BillDetail;

public class BilldetailMapper implements RowMapper<BillDetail>{

	@Override
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billdetail = new BillDetail();
		billdetail.setId(rs.getInt("id"));
		billdetail.setId_aocuoi(rs.getInt("id_aocuoi"));
		billdetail.setId_bills(rs.getInt("id_bills"));
		billdetail.setQuanty(rs.getInt("quanty"));
		billdetail.setTotal(rs.getDouble("total"));
		return billdetail;
	}

}
