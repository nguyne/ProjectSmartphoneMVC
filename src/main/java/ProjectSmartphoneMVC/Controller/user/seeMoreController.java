package ProjectSmartphoneMVC.Controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Dto.ProductManageDto;

@Controller
public class seeMoreController extends BaseController{
	@RequestMapping(value = "/product/seemore" , method = RequestMethod.GET)
	public ModelAndView ProductSeeMore(@RequestParam("id") String id) {
		_mvShase.setViewName("user/seeMore");
		_mvShase.addObject("productSee", _homeService.getDataProductSeeMore(id));
		List<ProductManageDto> list = _homeService.getDataProductSeeMore(id);
		_mvShase.addObject("nameType", list.get(0).getName());
		return _mvShase;
	}
	@RequestMapping(value = "/product/seemore/page" , method = RequestMethod.GET)
	public ModelAndView page() {
		
		return _mvShase;
	}
}
