package wdstudio1.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import wdstudio1.Dto.AnhCuoiDto;
import wdstudio1.Dto.AoCuoiDto;
import wdstudio1.Dto.CartDto;

@Repository
public class CartDao extends BaseDao {

	@Autowired
	AoCuoiDao aoCuoiDao = new AoCuoiDao();
	@Autowired
	AnhCuoiDao anhCuoiDao = new AnhCuoiDao();

	//Cart ACuoi
	public HashMap<Integer, CartDto> AddCart(int id, HashMap<Integer, CartDto> cart) {
		CartDto itemCart = new CartDto();
		AoCuoiDto aoCuoi = aoCuoiDao.FindAoCuoiById(id);
		if (aoCuoi != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getAoCuoiDto().getAoCuoiBan());
		}
		else {
			itemCart.setAoCuoiDto(aoCuoi);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(aoCuoi.getAoCuoiBan());
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	//Cart AnhCuoi
	public HashMap<Integer, CartDto> AddCart2(int id, HashMap<Integer, CartDto> cart2) {
		CartDto itemCart = new CartDto();
		AnhCuoiDto anhcuoi = anhCuoiDao.FindAnhCuoiById(id);
		if (anhcuoi != null && cart2.containsKey(id)) {
			itemCart = cart2.get(id);
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getAnhCuoiDto().getAnhCuoiBan());
		}
		else {
			itemCart.setAnhCuoiDto(anhcuoi);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(anhcuoi.getAnhCuoiBan());
		}
		cart2.put(id, itemCart);
		return cart2;
	}

	public HashMap<Integer, CartDto> DeleteCart(int id, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public HashMap<Integer, CartDto> DeleteCart2(int id, HashMap<Integer, CartDto> cart) {
		if (cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		return cart;
	}
	
	public int TotalQuanty(HashMap<Integer, CartDto> cart) {
		int totalQuanty = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty;
	}

	public int TotalPrice(HashMap<Integer, CartDto> cart) {
		int totalPrice = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice;
	}
	
	public int TotalQuanty2(HashMap<Integer, CartDto> cart2) {
		int totalQuanty2 = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart2.entrySet()) {
			totalQuanty2 += itemCart.getValue().getQuanty();
		}
		return totalQuanty2;
	}

	public int TotalPrice2(HashMap<Integer, CartDto> cart2) {
		int totalPrice2 = 0;
		for (Map.Entry<Integer, CartDto> itemCart : cart2.entrySet()) {
			totalPrice2 += itemCart.getValue().getTotalPrice();
		}
		return totalPrice2;
	}
}
