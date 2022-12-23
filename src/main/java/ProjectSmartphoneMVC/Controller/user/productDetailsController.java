package ProjectSmartphoneMVC.Controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class productDetailsController extends BaseController{
	@RequestMapping(value = "/product" , method = RequestMethod.GET)
	public ModelAndView ProductDetails(@RequestParam String id) {
		_mvShase.setViewName("user/productDetails");
		_mvShase.addObject("product_Details", _homeService.getDataProductsDetail(id));
		_mvShase.addObject("product_discounttext",_homeService.getDataDiscountText(id));
		_mvShase.addObject("product_configuration",_homeService.getDataConfiguration(id));
		return _mvShase;
	}
}
