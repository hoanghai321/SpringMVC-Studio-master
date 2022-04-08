package wdstudio1.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import wdstudio1.Service.HomeImpl;
@Controller
public class BaseController{
	@Autowired 
	HomeImpl _homeImpl;
	public ModelAndView _mvShare = new ModelAndView();
}
