package ProjectSmartphoneMVC.Controller.user;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Dto.CommentDto;
import ProjectSmartphoneMVC.Dto.CommentReplyDto;

@Controller
public class productDetailsController extends BaseController{
	@RequestMapping(value = "/product" , method = RequestMethod.GET)
	public ModelAndView ProductDetails(@RequestParam String id) {
		_mvShase.setViewName("user/productDetails");
		_mvShase.addObject("product_Details", _homeService.getDataProductsDetail(id));
		_mvShase.addObject("product_discounttext",_homeService.getDataDiscountText(id));
		_mvShase.addObject("product_configuration",_homeService.getDataConfiguration(id));
		_mvShase.addObject("comment", _homeService.getAllComments(id));
		List<CommentDto> list = _homeService.getAllComments(id);
		HashMap<Integer, CommentReplyDto> viewCommentReply = new HashMap<Integer, CommentReplyDto>();
		viewCommentReply = _homeService.viewCommentReply(viewCommentReply, list, id);
		_mvShase.addObject("commentReply", viewCommentReply);
		if(list.size() > 0) {
			int sumStars = 0;
			for(int i=0;i<list.size();i++) {
				sumStars +=list.get(i).getNumber_stars();
			}
			double stars = sumStars/list.size();
			_mvShase.addObject("stars", Math.round(stars*100.0)/100.0);
		}
		else {
			_mvShase.addObject("stars", 0);
		}
		return _mvShase;
	}
}
