package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.AnhCuoiImagesDto;

public class AnhCuoiImagesMapper implements RowMapper<AnhCuoiImagesDto>{

	@Override
	public AnhCuoiImagesDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AnhCuoiImagesDto anhCuoiImagesDto = new AnhCuoiImagesDto();
		anhCuoiImagesDto.setImageAnhCuoiId(rs.getInt("ImageAnhCuoiId"));
		anhCuoiImagesDto.setImage1(rs.getString("image1"));
		anhCuoiImagesDto.setImage2(rs.getString("image2"));
		anhCuoiImagesDto.setImage3(rs.getString("image3"));
		anhCuoiImagesDto.setAnhcuoi_id(rs.getInt("anhcuoi_id"));
		return anhCuoiImagesDto;
	}

}
