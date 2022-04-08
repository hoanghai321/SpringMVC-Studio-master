package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import wdstudio1.Dto.BillDetail2;
import wdstudio1.Mapper.Billdetail2Mapper;

@Repository
public class BillDetail2Dao extends BaseDao {
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("billdetail2 AS a ");
		sql.append("INNER JOIN ");
		sql.append("bills2 AS t ");
		sql.append("ON a.id_bills2 = t.id ");
		return sql;
	};

	public String SqlbilldetailByid2(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE t.id = " + id);
		return sql.toString();
	}

	public List<BillDetail2> getbilldetailById2(int id) {
		String sql = SqlbilldetailByid2(id);
		List<BillDetail2> list = _jdbcTemplate.query(sql, new Billdetail2Mapper());
		return list;
	}

	public List<BillDetail2> getDataBillDetail2() {
		List<BillDetail2> list = new ArrayList<BillDetail2>();
		String sql = "SELECT * FROM billdetail2";
		list = _jdbcTemplate.query(sql, new Billdetail2Mapper());
		return list;
	}

	public int DeleteBillDetailAnhCuoiById(int id) {
		String sql = "DELETE FROM billdetail2 WHERE billdetail2.id =? ";
		return _jdbcTemplate.update(sql, id);
	}
}
