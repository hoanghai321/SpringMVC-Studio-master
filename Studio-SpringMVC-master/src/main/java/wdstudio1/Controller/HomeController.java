package wdstudio1.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	@RequestMapping(value = {"/", "/Home"})
	 public ModelAndView Index() {
		_mvShare.addObject("aocuoi", _homeImpl.getDataAoCuoi());
		_mvShare.addObject("anhcuoi", _homeImpl.getDataAnhCuoi());
		_mvShare.setViewName("index");
		return _mvShare;
	}
	
	
	@RequestMapping(value = {"/AlbumAoCuoi"})
	public ModelAndView AlbumAoCuoi() {
		_mvShare.addObject("aocuoi", _homeImpl.getDataAoCuoi());
		_mvShare.setViewName("AlbumAoCuoi");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/AlbumAnhCuoi"})
	public ModelAndView AlbumAnhCuoi() {
		_mvShare.addObject("anhcuoi", _homeImpl.getDataAnhCuoi());
		_mvShare.setViewName("AlbumAnhCuoi");
		return _mvShare;
	}

	
	
//--------------------------------------------------------------------------------------------
//Details
	@RequestMapping(value = {"/DetailsAoCuoi/{id}"})
	 public ModelAndView ModalAoCuoiId(@PathVariable int id) {
		_mvShare.addObject("aocuoi", _homeImpl.getAoCuoiById(id));
		_mvShare.addObject("aocuoiimages", _homeImpl.getAoCuoiImagesById(id));
		_mvShare.setViewName("DetailsAoCuoi");
		return _mvShare;
	}

	@RequestMapping(value = {"/DetailsAoCuoi"})
	public ModelAndView ModalAoCuoi() {
		_mvShare.addObject("aocuoi", _homeImpl.getDataAoCuoi());
		_mvShare.setViewName("DetailsAoCuoi");
		return _mvShare;
	}
	
	@RequestMapping(value = {"/DetailsAnhCuoi/{id}"})
	 public ModelAndView ModalAnhCuoiId(@PathVariable int id) {
		_mvShare.addObject("anhcuoi", _homeImpl.getAnhCuoiById(id));
		_mvShare.addObject("anhcuoiimages", _homeImpl.getAnhCuoiImagesById(id));
		_mvShare.setViewName("DetailsAnhCuoi");
		return _mvShare;
	}

	@RequestMapping(value = {"/DetailsAnhCuoi"})
	public ModelAndView ModalAnhCuoi() {
		_mvShare.addObject("anhcuoi", _homeImpl.getDataAnhCuoi());
		_mvShare.setViewName("DetailsAnhCuoi");
		return _mvShare;
	}
}
