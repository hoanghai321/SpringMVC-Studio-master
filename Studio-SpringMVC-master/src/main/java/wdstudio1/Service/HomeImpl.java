package wdstudio1.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wdstudio1.Dao.AnhCuoiDao;
import wdstudio1.Dao.AnhCuoiImagesDao;
import wdstudio1.Dao.AoCuoiDao;
import wdstudio1.Dao.AoCuoiImagesDao;
import wdstudio1.Dao.BillDetail2Dao;
import wdstudio1.Dao.BillDetailDao;
import wdstudio1.Dao.Bills2Dao;
import wdstudio1.Dao.BillsDao;
import wdstudio1.Dao.CartDao;
import wdstudio1.Dao.UsersDao;
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
public class HomeImpl implements HomeService {
	@Autowired
	private AoCuoiDao aoCuoiDao;
	@Autowired
	private AnhCuoiDao anhCuoiDao;
	@Autowired
	private AoCuoiImagesDao aoCuoiImagesDao;
	@Autowired
	private AnhCuoiImagesDao anhCuoiImagesDao;
	@Autowired
	private CartDao cartDao;
	@Autowired
	private UsersDao usersDao = new UsersDao();
	@Autowired
	private BillsDao billsDao = new BillsDao();
	@Autowired
	private Bills2Dao bills2Dao = new Bills2Dao();
	@Autowired
	private BillDetailDao billDetailDao;
	@Autowired
	private BillDetail2Dao billDetail2Dao;

	// Ao Cuoi Dto
	public List<AoCuoiDto> getDataAoCuoi() {
		return aoCuoiDao.getDataAoCuoi();
	}

	public List<AoCuoiDto> getAoCuoiById(int id) {
		return aoCuoiDao.getAoCuoiById(id);
	}

//	Ao Cuoi Images
	@Override
	public List<AoCuoiImagesDto> getDataAoCuoiImages() {
		return aoCuoiImagesDao.getDataAoCuoiImages();
	}

	@Override
	public List<AoCuoiImagesDto> getAoCuoiImagesById(int id) {
		return aoCuoiImagesDao.getAoCuoiImagesById(id);
	}

// Anh Cuoi Dto
	@Override
	public List<AnhCuoiDto> getDataAnhCuoi() {
		return anhCuoiDao.getDataAnhCuoi();
	}

	@Override
	public List<AnhCuoiDto> getAnhCuoiById(int id) {
		return anhCuoiDao.getAnhCuoiById(id);
	}

// Anh Cuoi Images
	@Override
	public List<AnhCuoiImagesDto> getDataAnhCuoiImages() {
		return anhCuoiImagesDao.getDataAnhCuoiImages();
	}

	@Override
	public List<AnhCuoiImagesDto> getAnhCuoiImagesById(int id) {
		return anhCuoiImagesDao.getAnhCuoiImagesById(id);
	}

// Cart
	@Override
	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart) {
		return cartDao.AddCart(id, cart);
	}

	@Override
	public HashMap<Integer, CartDto> AddCart2(int id, HashMap<Integer, CartDto> cart2) {
		return cartDao.AddCart2(id, cart2);
	}

	@Override
	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart) {
		return cartDao.DeleteCart(id, cart);
	}

	@Override
	public HashMap<Integer, CartDto> DeleteCart2(int id, HashMap<Integer, CartDto> cart) {
		return cartDao.DeleteCart2(id, cart);
	}

	public int AddAccount(UsersDto user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}
	
	@Override
	public int EidtAccount(UsersDto user, int id) {
		return usersDao.EidtAccount(user, id);
	}

	@Override
	public UsersDto CheckAccount(UsersDto user) {
		String pass = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		if (user != null) {
			if (BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;
	}

	@Override
	public List<UsersDto> getDataUsers() {
		return usersDao.getDataUsers();
	}

	@Override
	public int TotalPrice(HashMap<Integer, CartDto> cart) {
		return cartDao.TotalPrice(cart);
	}

	@Override
	public int TotalQuanty(HashMap<Integer, CartDto> cart) {
		return cartDao.TotalQuanty(cart);
	}

	@Override
	public int TotalPrice2(HashMap<Integer, CartDto> cart2) {
		return cartDao.TotalPrice2(cart2);
	}

	@Override
	public int TotalQuanty2(HashMap<Integer, CartDto> cart2) {
		return cartDao.TotalQuanty2(cart2);
	}

	@Override
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}

	@Override
	public void AddBillsDetail(HashMap<Integer, CartDto> carts) {
		int idBills = billsDao.GetIDLastBills();

		for (Map.Entry<Integer, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_aocuoi(itemCart.getValue().getAoCuoiDto().getAoCuoiId());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}

	@Override
	public int AddBills2(Bills2 bill2) {
		return bills2Dao.AddBills2(bill2);
	}

	@Override
	public void AddBillsDetail2(HashMap<Integer, CartDto> carts) {
		int idBills = bills2Dao.GetIDLastBills2();

		for (Map.Entry<Integer, CartDto> itemCart : carts.entrySet()) {
			BillDetail2 billDetail2 = new BillDetail2();
			billDetail2.setId_bills2(idBills);
			billDetail2.setId_anhcuoi(itemCart.getValue().getAnhCuoiDto().getAnhCuoiId());
			billDetail2.setQuanty(itemCart.getValue().getQuanty());
			billDetail2.setTotal(itemCart.getValue().getTotalPrice());
			bills2Dao.AddBillsDetail2(billDetail2);
		}
	}

	@Override
	public List<Bills> getDataBills() {
		return billsDao.getDataBills();
	}

	@Override
	public List<Bills2> getDataBills2() {
		return bills2Dao.getDataBills2();
	}

	@Override
	public List<BillDetail> getDataBillDetail() {
		return billDetailDao.getDataBillDetail();
	}

	@Override
	public List<BillDetail> getbilldetailById(int id) {
		return billDetailDao.getbilldetailById(id);
	}

	@Override
	public List<AoCuoiDto> getbillaocuoiById(int id) {
		return aoCuoiDao.getbillaocuoiById(id);
	}

	@Override
	public List<AnhCuoiDto> getbillanhcuoiById(int id) {
		return anhCuoiDao.getbillanhcuoiById(id);
	}

	@Override
	public List<BillDetail2> getDataBillDetail2() {
		return billDetail2Dao.getDataBillDetail2();
	}

	@Override
	public List<BillDetail2> getbilldetailById2(int id) {
		return billDetail2Dao.getbilldetailById2(id);
	}

	@Override
	public int DeleteBillsAoCuoiById(int id) {
		return billsDao.DeleteBillsAoCuoiById(id);
	}

	@Override
	public int DeleteBillsAnhCuoiById(int id) {
		return bills2Dao.DeleteBillsAnhCuoiById(id);
	}

	@Override
	public int DeleteBillDetailAoCuoiById(int id) {
		return billDetailDao.DeleteBillDetailAoCuoiById(id);
	}

	@Override
	public int DeleteBillDetailAnhCuoiById(int id) {
		return billDetail2Dao.DeleteBillDetailAnhCuoiById(id);
	}

	@Override
	public int DeleteUserById(int id) {
		return usersDao.DeleteUserById(id);
	}

	@Override
	public UsersDto getUsersById(int id) {
		return usersDao.getUsersById(id);
	}

}
