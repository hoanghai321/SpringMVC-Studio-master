package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.AoCuoiImagesDto;

public class AoCuoiImgaesMapper implements RowMapper<AoCuoiImagesDto>{

	@Override
	public AoCuoiImagesDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AoCuoiImagesDto aoCuoiImagesDto = new AoCuoiImagesDto();
		aoCuoiImagesDto.setImageAoCuoiId(rs.getInt("ImageAoCuoiId"));
		aoCuoiImagesDto.setImage1(rs.getString("image1"));
		aoCuoiImagesDto.setImage2(rs.getString("image2"));
		aoCuoiImagesDto.setImage3(rs.getString("image3"));
		aoCuoiImagesDto.setAocuoi_id(rs.getInt("aocuoi_id"));
		return aoCuoiImagesDto;
	}

}
