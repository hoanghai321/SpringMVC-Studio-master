package wdstudio1.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import wdstudio1.Dto.Bills;
import wdstudio1.Dto.Bills2;
import wdstudio1.Dto.CartDto;
import wdstudio1.Dto.UsersDto;

@Controller
public class CheckoutController extends BaseController{
	//Thanh toán
		@RequestMapping(value = {"/Checkout"}, method = RequestMethod.GET)
		public ModelAndView Checkout(HttpServletRequest request ,HttpSession session){
			_mvShare.setViewName("bills/Checkout");
			Bills bills = new Bills();
			UsersDto loginInfo = (UsersDto)session.getAttribute("LoginInfo");
			if(loginInfo != null) {
				bills.setAddress(loginInfo.getAddress());
				bills.setDisplay_name(loginInfo.getDisplay_name());
				bills.setUser(loginInfo.getUser());
			}
			_mvShare.addObject("bills", bills);
			return _mvShare;
		}
		
		@RequestMapping(value = {"/Checkout"}, method = RequestMethod.POST)
		public String CheckoutBill(HttpServletRequest request ,HttpSession session, @ModelAttribute("bills") Bills bill){
			Integer str1 = (Integer) session.getAttribute("TotalQuantyCart");
			bill.setQuanty(str1);
			Integer str2 = (Integer) session.getAttribute("TotalPriceCart");
			bill.setTotal(str2);
			if(_homeImpl.AddBills(bill) > 0) {
				HashMap<Integer, CartDto> carts = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
				_homeImpl.AddBillsDetail(carts);
			}
			session.removeAttribute("Cart");
			session.removeAttribute("TotalQuantyCart");
			session.removeAttribute("TotalPriceCart");
			return "redirect:Home";
		}
		
		@RequestMapping(value = {"/Checkout2"}, method = RequestMethod.GET)
		public ModelAndView Checkout2(HttpServletRequest request ,HttpSession session){
			_mvShare.setViewName("bills/Checkout2");
			Bills2 bills2 = new Bills2();
			UsersDto loginInfo = (UsersDto)session.getAttribute("LoginInfo");
			if(loginInfo != null) {
				bills2.setAddress(loginInfo.getAddress());
				bills2.setDisplay_name(loginInfo.getDisplay_name());
				bills2.setUser(loginInfo.getUser());
			}
			_mvShare.addObject("bills2", bills2);
			return _mvShare;
		}
		
		@RequestMapping(value = {"/Checkout2"}, method = RequestMethod.POST)
		public String CheckoutBill2(HttpServletRequest request ,HttpSession session, @ModelAttribute("bills2") Bills2 bill2){
			Integer str1 = (Integer) session.getAttribute("TotalQuantyCart2");
			bill2.setQuanty(str1);
			Integer str2 = (Integer) session.getAttribute("TotalPriceCart2");
			bill2.setTotal(str2);
			if(_homeImpl.AddBills2(bill2) > 0) {
				HashMap<Integer, CartDto> carts = (HashMap<Integer, CartDto>)session.getAttribute("Cart2");
				_homeImpl.AddBillsDetail2(carts);
			}
			session.removeAttribute("Cart2");
			session.removeAttribute("TotalQuantyCart2");
			session.removeAttribute("TotalPriceCart2");
			return "redirect:Home";
		}
}
