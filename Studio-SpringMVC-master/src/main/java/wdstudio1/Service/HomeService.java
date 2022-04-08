package wdstudio1.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import wdstudio1.Dto.AnhCuoiDto;
import wdstudio1.Dto.AnhCuoiImagesDto;
import wdstudio1.Dto.AoCuoiDto;
import wdstudio1.Dto.AoCuoiImagesDto;
import wdstudio1.Dto.BillDetail;
import wdstudio1.Dto.BillDetail2;
import wdstudio1.Dto.Bills;
import wdstudio1.Dto.Bills2;
import wdstudio1.Dto.CartDto;
import wdstudio1.Dto.UsersDto;
@Service
public interface HomeService {
	
	public int AddAccount(UsersDto user);
	public int EidtAccount(UsersDto user, int id);
	public UsersDto getUsersById(int id);
	
	public UsersDto CheckAccount(UsersDto user);
	public List<UsersDto> getDataUsers();
	
	public int DeleteUserById(int id);
	
	public List<AoCuoiDto> getDataAoCuoi();
	public List<AoCuoiDto> getAoCuoiById(int id);
	
	public List<AnhCuoiDto> getDataAnhCuoi();
	public List<AnhCuoiDto> getAnhCuoiById(int id);
	
	public List<AoCuoiImagesDto> getDataAoCuoiImages();
	public List<AoCuoiImagesDto> getAoCuoiImagesById(int id);

	public List<AnhCuoiImagesDto> getDataAnhCuoiImages();
	public List<AnhCuoiImagesDto> getAnhCuoiImagesById(int id);
	
	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart);
	public HashMap<Integer, CartDto> AddCart2(int id, HashMap<Integer, CartDto> cart2);
	
	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart);
	public HashMap<Integer, CartDto> DeleteCart2(int id, HashMap<Integer, CartDto> cart);
	 
	public int TotalQuanty(HashMap<Integer, CartDto> cart);
	public int TotalPrice(HashMap<Integer, CartDto> cart);
	
	public int TotalQuanty2(HashMap<Integer, CartDto> cart2);
	public int TotalPrice2(HashMap<Integer, CartDto> cart2);
	
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Integer, CartDto> carts);
	
	public List<Bills> getDataBills();
	public List<Bills2> getDataBills2();
	
	public List<BillDetail> getDataBillDetail();
	public List<BillDetail> getbilldetailById(int id);
	public List<AoCuoiDto> getbillaocuoiById(int id);
	
	public List<BillDetail2> getDataBillDetail2();
	public List<BillDetail2> getbilldetailById2(int id);
	public List<AnhCuoiDto> getbillanhcuoiById(int id);
	
	public int AddBills2(Bills2 bill2);
	public void AddBillsDetail2(HashMap<Integer, CartDto> carts);
	
	public int DeleteBillsAoCuoiById(int id);
	public int DeleteBillsAnhCuoiById(int id);
	
	public int DeleteBillDetailAoCuoiById(int id);
	public int DeleteBillDetailAnhCuoiById(int id);
}
