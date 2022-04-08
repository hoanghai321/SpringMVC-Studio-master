package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import wdstudio1.Dto.AoCuoiDto;
import wdstudio1.Mapper.AoCuoiDtoMapper;

@Repository
public class AoCuoiDao extends BaseDao{

	
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM aocuoi AS a ");
		return sql;
	}

	public List<AoCuoiDto> getDataAoCuoi() {
		List<AoCuoiDto> list = new ArrayList<AoCuoiDto>();
		String sql = "SELECT * FROM aocuoi";
		list = _jdbcTemplate.query(sql, new AoCuoiDtoMapper());
		return list;
	}

	public String SqlAoCuoiById(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE a.AoCuoiId = " + id);
		return sql.toString();
	}
	
	public List<AoCuoiDto> getAoCuoiById(int id) {
		String sql = SqlAoCuoiById(id);
		List<AoCuoiDto> listAoCuoi = _jdbcTemplate.query(sql, new AoCuoiDtoMapper());
		return listAoCuoi;
	}
	
	public AoCuoiDto FindAoCuoiById(int id) {
		String sql = SqlAoCuoiById(id);
		AoCuoiDto AoCuoi = _jdbcTemplate.queryForObject(sql, new AoCuoiDtoMapper());
		return AoCuoi;
	}
	
	private StringBuffer sqlString2() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("aocuoi AS a ");
		sql.append("INNER JOIN ");
		sql.append("billdetail AS t ");
		sql.append("ON a.AoCuoiId = t.id_aocuoi ");
		return sql;
	};

	public String SqlbillaocuoiByid(int id) {
		StringBuffer sql = sqlString2();
		sql.append("WHERE t.id_aocuoi = " + id);
		return sql.toString();
	}

	public List<AoCuoiDto> getbillaocuoiById(int id) {
		String sql = SqlbillaocuoiByid(id);
		List<AoCuoiDto> list = _jdbcTemplate.query(sql, new AoCuoiDtoMapper());
		return list;
	}
}
