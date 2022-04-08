package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import wdstudio1.Dto.BillDetail2;
import wdstudio1.Dto.Bills2;
import wdstudio1.Mapper.Bills2Mapper;

@Repository
public class Bills2Dao extends BaseDao {
	public int AddBills2(Bills2 bill2) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `bills2` ");
		sql.append("( ");
		sql.append(" `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note` ");
		sql.append(") ");
		sql.append(" VALUES ");
		sql.append("( ");
		sql.append(" '" + bill2.getUser() + "', ");
		sql.append(" '" + bill2.getPhone() + "', ");
		sql.append(" '" + bill2.getDisplay_name() + "', ");
		sql.append(" '" + bill2.getAddress() + "', ");
		sql.append(" " + bill2.getTotal() + ", ");
		sql.append(" " + bill2.getQuanty() + ", ");
		sql.append(" '" + bill2.getNote() + "' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public int GetIDLastBills2() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills2;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};

	public List<Bills2> getDataBills2() {
		List<Bills2> list = new ArrayList<Bills2>();
		String sql = "SELECT * FROM bills2";
		list = _jdbcTemplate.query(sql, new Bills2Mapper());
		return list;
	}

	public int AddBillsDetail2(BillDetail2 billDetail2) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `billdetail2` ");
		sql.append("( ");
		sql.append(" `id_anhcuoi`, `id_bills2`, `quanty`, `total` ");
		sql.append(") ");
		sql.append(" VALUES ");
		sql.append("( ");
		sql.append(" '" + billDetail2.getId_anhcuoi() + "', ");
		sql.append(" '" + billDetail2.getId_bills2() + "', ");
		sql.append(" " + billDetail2.getTotal() + ", ");
		sql.append(" " + billDetail2.getQuanty() + " ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public int DeleteBillsAnhCuoiById(int id) {
		String sql = "DELETE FROM bills2 WHERE bills2.id =? ";
		return _jdbcTemplate.update(sql, id);
	}
}
