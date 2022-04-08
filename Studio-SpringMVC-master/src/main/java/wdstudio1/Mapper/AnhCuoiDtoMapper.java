package wdstudio1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import wdstudio1.Dto.AnhCuoiDto;

public class AnhCuoiDtoMapper implements RowMapper<AnhCuoiDto>{

	@Override
	public AnhCuoiDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AnhCuoiDto anhCuoiDto = new AnhCuoiDto();
		anhCuoiDto.setAnhCuoiId(rs.getInt("AnhCuoiId"));
		anhCuoiDto.setAnhCuoiName(rs.getString("AnhCuoiName"));
		anhCuoiDto.setAnhCuoiBan(rs.getDouble("AnhCuoiBan"));
		anhCuoiDto.setAnhCuoiImage(rs.getString("AnhCuoiImage"));
		return anhCuoiDto;
	}

}
