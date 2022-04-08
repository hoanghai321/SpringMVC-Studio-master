package wdstudio1.Dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import wdstudio1.Dto.AnhCuoiImagesDto;
import wdstudio1.Mapper.AnhCuoiImagesMapper;

@Repository
public class AnhCuoiImagesDao extends BaseDao{
	
	private StringBuffer sqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT * FROM ");
		sql.append("anhcuoi AS a ");
		sql.append("INNER JOIN ");
		sql.append("anhcuoiimages AS t ");
		sql.append("ON a.AnhCuoiId = t.anhcuoi_id ");
		return sql;
	}
	
	public String SqlAnhCuoiImagesById(int id) {
		StringBuffer sql = sqlString();
		sql.append("WHERE t.anhcuoi_id = " + id);
		return sql.toString();
	}

	public List<AnhCuoiImagesDto> getAnhCuoiImagesById(int id) {
		String sql = SqlAnhCuoiImagesById(id);
		List<AnhCuoiImagesDto> listAnhCuoiImages = _jdbcTemplate.query(sql, new AnhCuoiImagesMapper());
		return listAnhCuoiImages;
	}

	public List<AnhCuoiImagesDto> getDataAnhCuoiImages() {
		List<AnhCuoiImagesDto> list = new ArrayList<AnhCuoiImagesDto>();
		String sql = "SELECT * FROM anhcuoiimages";
		list = _jdbcTemplate.query(sql, new AnhCuoiImagesMapper());
		return list;
	}

}
