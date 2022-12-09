package ProjectSmartphoneMVC.Controller.user;

import javax.servlet.annotation.HttpMethodConstraint;
import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Dao.Product_typeDao;
import ProjectSmartphoneMVC.Dao.ProductsDao;
import ProjectSmartphoneMVC.Service.user.HomeServiceImpl;

@Controller
public class HomeController{
	@Autowired
	HomeServiceImpl productService;
	@RequestMapping(value = {"/","/trang-chu/"} , method = RequestMethod.GET)
	public ModelAndView Index() {
		ModelAndView mv = new ModelAndView("user/index");
		mv.addObject("product_type", productService.getDataProduct_type());
		mv.addObject("product", productService.getDataProducts());
		return mv;
	}
	
	
	@RequestMapping(value = "/product/" , method = RequestMethod.GET)
	public ModelAndView ProductDetails() {
		ModelAndView mv = new ModelAndView("user/productDetails");
		return mv;
	}
}
