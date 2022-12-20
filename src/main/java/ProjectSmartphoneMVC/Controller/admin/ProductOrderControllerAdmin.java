package ProjectSmartphoneMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Dto.ProductsOrdersManageDto;


@Controller
public class ProductOrderControllerAdmin extends BaseControllerAdmin{
	@RequestMapping(value = {"/admin/order"} , method = RequestMethod.GET)
	public ModelAndView productOrder() {
		_mvShase.addObject("ordersProduct", new ProductsOrdersManageDto());
		_mvShase.setViewName("admin/manageProductOrder");
		_mvShase.addObject("orders", _homeService.getDataOrdersManageDtos());
		return _mvShase;
	}
	@RequestMapping(value = {"/admin/order"} , method = RequestMethod.POST)
	public ModelAndView productOrderStatus(@ModelAttribute("ordersProduct") ProductsOrdersManageDto ordersManageDto ) {
		if(ordersManageDto.getName_status() == "1") {
			_mvShase.setViewName("admin/manageProductOrder");
			_mvShase.addObject("orders", _homeService.getDataOrdersManageDtos());
		}else if(ordersManageDto.getName_status() == "2") {
			_mvShase.setViewName("admin/manageProductOrder");
			_mvShase.addObject("orders", _homeService.getDataOrdersManageDtos("1"));
		}else if(ordersManageDto.getName_status() == "3") {
			_mvShase.setViewName("admin/manageProductOrder");
			_mvShase.addObject("orders", _homeService.getDataOrdersManageDtos("2"));
		}else if(ordersManageDto.getName_status() == "4") {
			_mvShase.setViewName("admin/manageProductOrder");
			_mvShase.addObject("orders", _homeService.getDataOrdersManageDtos("3"));
		}
		return _mvShase;
	}
	
}
