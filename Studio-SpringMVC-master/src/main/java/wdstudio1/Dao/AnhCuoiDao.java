package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import wdstudio1.Dto.AnhCuoiDto;
import wdstudio1.Dto.AoCuoiDto;
import wdstudio1.Mapper.AnhCuoiDtoMapper;
import wdstudio1.Mapper.AoCuoiDtoMapper;

@Repository
public class AnhCuoiDao extends BaseDao{
	
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM anhcuoi AS a ");
		return sql;
	}
	
	public List<AnhCuoiDto> getDataAnhCuoi() {
		List<AnhCuoiDto> list = new ArrayList<AnhCuoiDto>();
		String sql = "SELECT * FROM anhcuoi";
		list = _jdbcTemplate.query(sql, new AnhCuoiDtoMapper());
		return list;
	}

	public String SqlAnhCuoiById(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE a.AnhCuoiId = " + id);
		return sql.toString();
	}
	
	public List<AnhCuoiDto> getAnhCuoiById(int id) {
		String sql = SqlAnhCuoiById(id);
		List<AnhCuoiDto> listAnhCuoi = _jdbcTemplate.query(sql, new AnhCuoiDtoMapper());
		return listAnhCuoi;
	}
	
	public AnhCuoiDto FindAnhCuoiById(int id) {
		String sql = SqlAnhCuoiById(id);
		AnhCuoiDto AnhCuoi = _jdbcTemplate.queryForObject(sql, new AnhCuoiDtoMapper());
		return AnhCuoi;
	}
	
	private StringBuffer sqlString2() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("anhcuoi AS a ");
		sql.append("INNER JOIN ");
		sql.append("billdetail2 AS t ");
		sql.append("ON a.AnhCuoiId = t.id_anhcuoi ");
		return sql;
	};

	public String SqlbillanhcuoiByid(int id) {
		StringBuffer sql = sqlString2();
		sql.append("WHERE t.id_anhcuoi = " + id);
		return sql.toString();
	}

	public List<AnhCuoiDto> getbillanhcuoiById(int id) {
		String sql = SqlbillanhcuoiByid(id);
		List<AnhCuoiDto> list = _jdbcTemplate.query(sql, new AnhCuoiDtoMapper());
		return list;
	}
}
