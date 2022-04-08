package wdstudio1.Controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.tags.Param;

import wdstudio1.Dto.UsersDto;

@Controller
public class AdminController extends BaseController {

	// homeadmin Quản lý tài khoản của Users
	@RequestMapping(value = { "/QLTK" }, method = RequestMethod.GET)
	public ModelAndView IndexAdmin() {
		_mvShare.addObject("user", _homeImpl.getDataUsers());
		_mvShare.setViewName("admin/QLTK");
		return _mvShare;
	}

	// Xoá tài khoản của Users
	@RequestMapping(value = { "/DeleteUsers/{id}" })
	public String DeleteUsers(HttpSession session, @PathVariable int id, @ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_mvShare.addObject("user", _homeImpl.DeleteUserById(id));
		}
		return "redirect:/QLTK";
	}

	// Chỉnh sửa thông tin tài khoản và phân quyền Users
	@RequestMapping(value = { "/EditUsers/{id}" })
	public ModelAndView EidtUsers(@PathVariable int id) {
		_mvShare.addObject("user", _homeImpl.getUsersById(id));
		_mvShare.setViewName("admin/EditUsers");
		return _mvShare;
	}

	@PostMapping(value = { "/EditUsers/{id}" })
	public String EidtUsers2(@ModelAttribute("user") UsersDto usersDto, @PathVariable int id) {
		_homeImpl.EidtAccount(usersDto, id);
		return "redirect:/QLTK";
	}

	// Xem bills áo cưới
	@RequestMapping(value = { "/BillsAoCuoi" })
	public ModelAndView BillDetailAoCuoiIndex() {
		_mvShare.addObject("BillsAoCuoi", _homeImpl.getDataBills());
		_mvShare.setViewName("admin/BillsAoCuoi");
		return _mvShare;
	}

	// Xem chi tiết bills áo cưới theo id
	@RequestMapping(value = { "/BillsAoCuoi/{id}" })
	public ModelAndView BillDetailAoCuoi(@PathVariable int id) {
		_mvShare.addObject("BillDetailAoCuoi", _homeImpl.getbilldetailById(id));
		_mvShare.addObject("aocuoi", _homeImpl.getDataAoCuoi());
		_mvShare.setViewName("admin/BillDetailAoCuoi");
		return _mvShare;
	}

	// Xem bills ảnh cưới
	@RequestMapping(value = { "/BillsAnhCuoi" })
	public ModelAndView BillDetailAnhCuoiIndex() {
		_mvShare.addObject("BillsAnhCuoi", _homeImpl.getDataBills2());
		_mvShare.setViewName("admin/BillsAnhCuoi");
		return _mvShare;
	}

	// Xem chi tiết bills ảnh cưới theo id
	@RequestMapping(value = { "/BillsAnhCuoi/{id}" })
	public ModelAndView BillDetailAnhCuoi(@PathVariable int id) {
		_mvShare.addObject("BillDetail2", _homeImpl.getbilldetailById2(id));
		_mvShare.addObject("anhcuoi", _homeImpl.getDataAnhCuoi());
		_mvShare.setViewName("admin/BillDetailAnhCuoi");
		return _mvShare;
	}

	// Xoá bills áo cưới
	@RequestMapping(value = { "/DeleteAoCuoiById/{id}" })
	public String Delete(HttpSession session, @PathVariable int id, @ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_homeImpl.DeleteBillsAoCuoiById(id);
		}
		return "redirect:/BillsAoCuoi";
	}

	// Xoá chi tiết bill áo cưới
	@RequestMapping(value = { "/DeleteDetailAoCuoi/{id}" })
	public String DeleteDetailAoCuoi(HttpSession session, @PathVariable int id, @ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_homeImpl.DeleteBillDetailAoCuoiById(id);
		}
		return "redirect:/BillsAoCuoi";
	}

	// Xoá bills ảnh cưới
	@RequestMapping(value = { "/DeleteAnhCuoiById/{id}" })
	public String Delete2(HttpSession session, @PathVariable int id, @ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_homeImpl.DeleteBillsAnhCuoiById(id);
		}
		return "redirect:/BillsAnhCuoi";
	}

	// Xoá chi tiết bill ảnh cưới
	@RequestMapping(value = { "/DeleteDetailAnhCuoi/{id}" })
	public String DeleteDetailAnhCuoi(HttpSession session, @PathVariable int id,
			@ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_homeImpl.DeleteBillDetailAnhCuoiById(id);
		}
		return "redirect:/BillsAnhCuoi";
	}

}
