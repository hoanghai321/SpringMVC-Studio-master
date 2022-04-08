package wdstudio1.Dto;

public class BillDetail {
	private int id;
	private int id_aocuoi;
	private int id_bills;
	private int quanty;
	private double total;
	private AoCuoiDto aoCuoiDto;

	public BillDetail() {
		super();
	}

	public BillDetail(int id, int id_aocuoi, int id_bills, int quanty, double total, AoCuoiDto aoCuoiDto) {
		super();
		this.id = id;
		this.id_aocuoi = id_aocuoi;
		this.id_bills = id_bills;
		this.quanty = quanty;
		this.total = total;
		this.aoCuoiDto = aoCuoiDto;
	}

	public AoCuoiDto getAoCuoiDto() {
		return aoCuoiDto;
	}

	public void setAoCuoiDto(AoCuoiDto aoCuoiDto) {
		this.aoCuoiDto = aoCuoiDto;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_aocuoi() {
		return id_aocuoi;
	}

	public int setId_aocuoi(int id_aocuoi) {
		return this.id_aocuoi = id_aocuoi;
	}

	public int getId_bills() {
		return id_bills;
	}

	public void setId_bills(int id_bills) {
		this.id_bills = id_bills;
	}

	public int getQuanty() {
		return quanty;
	}

	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
