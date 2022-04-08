package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import wdstudio1.Mapper.AoCuoiImgaesMapper;
import wdstudio1.Dto.AoCuoiImagesDto;

@Repository
public class AoCuoiImagesDao extends BaseDao{
	
	private StringBuffer sqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("aocuoi AS a ");
		sql.append("INNER JOIN ");
		sql.append("aocuoiimages AS t ");
		sql.append("ON a.AoCuoiId = t.aocuoi_id ");
		return sql;
	}
	
	public String SqlTTSPAoCuoiById(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE t.aocuoi_id = " + id);
		return sql.toString();
	}
	
	public List<AoCuoiImagesDto> getAoCuoiImagesById(int id) {
		String sql = SqlTTSPAoCuoiById(id);
		List<AoCuoiImagesDto> listAoCuoiImages = _jdbcTemplate.query(sql, new AoCuoiImgaesMapper());
		return listAoCuoiImages;
	}
	
	public List<AoCuoiImagesDto> getDataAoCuoiImages() {
		List<AoCuoiImagesDto> list = new ArrayList<AoCuoiImagesDto>();
		String sql = "SELECT * FROM aocuoiimages";
		list = _jdbcTemplate.query(sql, new AoCuoiImgaesMapper());
		return list;
	}

}
