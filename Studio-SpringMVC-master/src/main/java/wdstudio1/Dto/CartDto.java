package wdstudio1.Dto;

public class CartDto {
	private int quanty;
	private double totalPrice;
	private AoCuoiDto aoCuoiDto;
	private AnhCuoiDto anhCuoiDto;

	public CartDto() {
	}

	public CartDto(int quanty, double totalPrice, AoCuoiDto aoCuoiDto, AnhCuoiDto anhCuoiDto) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.aoCuoiDto = aoCuoiDto;
		this.anhCuoiDto = anhCuoiDto;
	}

	public int getQuanty() {
		return quanty;
	}

	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public AoCuoiDto getAoCuoiDto() {
		return aoCuoiDto;
	}

	public void setAoCuoiDto(AoCuoiDto aoCuoiDto) {
		this.aoCuoiDto = aoCuoiDto;
	}

	public AnhCuoiDto getAnhCuoiDto() {
		return anhCuoiDto;
	}

	public void setAnhCuoiDto(AnhCuoiDto anhCuoiDto) {
		this.anhCuoiDto = anhCuoiDto;
	}

}
