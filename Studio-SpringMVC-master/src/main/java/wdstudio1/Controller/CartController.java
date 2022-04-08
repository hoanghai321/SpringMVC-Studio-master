package wdstudio1.Controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import wdstudio1.Dto.CartDto;

@Controller
public class CartController extends BaseController{
	//----------------------------------------------------------------------------	
	// Cart
		@RequestMapping(value = {"/Cart"})
		public ModelAndView Cart(){
			_mvShare.addObject("aocuoi", _homeImpl.getDataAoCuoi());
			_mvShare.addObject("anhcuoi", _homeImpl.getDataAnhCuoi());
			_mvShare.setViewName("Cart");
			return _mvShare;
		}
		
		@RequestMapping(value = {"AddCart/{id}"})
		public String CartAoCuoi(HttpServletRequest request ,HttpSession session, @PathVariable int id){
			HashMap<Integer, CartDto> cartaocuoi = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
			if(cartaocuoi == null) {
				cartaocuoi = new HashMap<Integer, CartDto>();
			}
			cartaocuoi = _homeImpl.AddCart(id, cartaocuoi); 
			session.setAttribute("Cart", cartaocuoi);
			session.setAttribute("TotalQuantyCart", _homeImpl.TotalQuanty(cartaocuoi));
			session.setAttribute("TotalPriceCart", _homeImpl.TotalPrice(cartaocuoi));
			return "redirect:"+request.getHeader("Referer");
		}
		
		@RequestMapping(value = {"AddCart2/{id}"})
		public String CartAnhCuoi(HttpServletRequest request ,HttpSession session, @PathVariable int id){
			HashMap<Integer, CartDto> cartanhcuoi = (HashMap<Integer, CartDto>)session.getAttribute("Cart2");
			if(cartanhcuoi == null) {
				cartanhcuoi = new HashMap<Integer, CartDto>();
			}
			cartanhcuoi = _homeImpl.AddCart2(id, cartanhcuoi);
			session.setAttribute("Cart2", cartanhcuoi);
			session.setAttribute("TotalQuantyCart2", _homeImpl.TotalQuanty(cartanhcuoi));
			session.setAttribute("TotalPriceCart2", _homeImpl.TotalPrice(cartanhcuoi));
			return "redirect:"+request.getHeader("Referer");
		}
		
		@RequestMapping(value = {"DeleteCart/{id}"})
		public String DeleteCart(HttpServletRequest request ,HttpSession session, @PathVariable int id){
			HashMap<Integer, CartDto> cartaocuoi = (HashMap<Integer, CartDto>)session.getAttribute("Cart");
			if(cartaocuoi == null) {
				cartaocuoi = new HashMap<Integer, CartDto>();	
			}
			cartaocuoi = _homeImpl.DeleteCart(id, cartaocuoi); 
			session.setAttribute("Cart", cartaocuoi);
			session.setAttribute("TotalQuantyCart", _homeImpl.TotalQuanty(cartaocuoi));
			session.setAttribute("TotalPriceCart", _homeImpl.TotalPrice(cartaocuoi));
			return "redirect:"+request.getHeader("Referer");
		}
		
		@RequestMapping(value = {"DeleteCart2/{id}"})
		public String DeleteCart2(HttpServletRequest request ,HttpSession session, @PathVariable int id){
			HashMap<Integer, CartDto> cartanhcuoi = (HashMap<Integer, CartDto>)session.getAttribute("Cart2");
			if(cartanhcuoi == null) {
			cartanhcuoi = new HashMap<Integer, CartDto>();	
		}
			cartanhcuoi = _homeImpl.DeleteCart2(id, cartanhcuoi); 
			session.setAttribute("Cart2", cartanhcuoi);
			session.setAttribute("TotalQuantyCart2", _homeImpl.TotalQuanty(cartanhcuoi));
			session.setAttribute("TotalPriceCart2", _homeImpl.TotalPrice(cartanhcuoi));
			return "redirect:"+request.getHeader("Referer");
		}
}
