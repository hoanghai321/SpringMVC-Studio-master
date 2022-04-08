package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.AoCuoiDto;


public class AoCuoiDtoMapper implements RowMapper<AoCuoiDto>{

	public AoCuoiDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AoCuoiDto aoCuoiDto = new AoCuoiDto();
		aoCuoiDto.setAoCuoiId(rs.getInt("AoCuoiId"));
		aoCuoiDto.setAoCuoiName(rs.getString("AoCuoiName"));
		aoCuoiDto.setAoCuoiBan(rs.getDouble("AoCuoiBan"));
		aoCuoiDto.setAoCuoiImage(rs.getString("AoCuoiImage"));
		return aoCuoiDto;
	}

}
