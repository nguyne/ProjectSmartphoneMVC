package ProjectSmartphoneMVC.Controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Service.user.HomeServiceImpl;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeService;
	
	public ModelAndView _mvShase = new ModelAndView();
}
