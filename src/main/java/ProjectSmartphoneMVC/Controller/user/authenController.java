package ProjectSmartphoneMVC.Controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Dto.UsersManageDto;
import ProjectSmartphoneMVC.Entity.Users;

@Controller
public class authenController extends BaseController{
	@RequestMapping(value = {"/authen/login"}, method = RequestMethod.GET)
	public ModelAndView login() {
		_mvShase.setViewName("authen/login");
		_mvShase.addObject("status", null);
		_mvShase.addObject("userLogin",new Users());
		return _mvShase;
	}
	/*
	 * Để gọi session trong controller thì dung hàm session.getAttribute("name session")
	 * */
	@RequestMapping(value = {"/authen/login"}, method = RequestMethod.POST)
	public ModelAndView loginUser(@ModelAttribute("userLogin") Users users,HttpSession session) {
		List<UsersManageDto> list = _homeService.getDataUsers(users.getUserName(), users.getPassword());
		if(list.size() > 0) {
			session.setAttribute("idUser", list.get(0).getId());
			session.setAttribute("roleID", list.get(0).getRole_id());
			session.setAttribute("fullname", list.get(0).getFullname());
			String url = "redirect:/trang-chu/";
			_mvShase.setViewName(url);
			return _mvShase;
		}else {
			_mvShase.addObject("status", "Tài khoản hoặc mật khẩu sai!!</br>Vui lòng kiểm tra lại!!");
		}
		_mvShase.setViewName("authen/login");
		return _mvShase;
	}
	@RequestMapping(value = {"/authen/register"}, method = RequestMethod.GET)
	public ModelAndView register() {
		_mvShase.setViewName("authen/register");
		_mvShase.addObject("status", null);
		_mvShase.addObject("userRegister",new Users());
		return _mvShase;
	}
	
	@RequestMapping(value = {"/authen/register"}, method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("userRegister") Users users, @RequestParam("password_confirmation") String password_confirmation) {
		List<UsersManageDto> list = _homeServiceAdmin.getDataUsers();
		if(password_confirmation.equals(users.getPassword())) {
			int dem=0;
			for(int i=0;i<list.size();i++) {
				String emailString = list.get(i).getEmail();
				String userNameString = list.get(i).getUserName();
				if(userNameString.equals(users.getUserName()) || emailString.equals(users.getEmail())) {
					dem++;
				}
			}
			if(dem == 0) {
				users.setPhone_number("");
				users.setAddress("");
				users.setRole_id(2);
				int count = _homeService.insert(users);
				if(count>0) {
					String url = "redirect:/trang-chu/";
					_mvShase.setViewName(url);
					return _mvShase;
				}else {
					_mvShase.addObject("status", "Đăng ký không thành công.");
				}
				
			}else {
				_mvShase.addObject("status", "Tên đăng nhập hoặc Email đã tồn tại!!</br>Xin quý khách vui lòng kiểm tra lại.");
			}
		}else {
			_mvShase.addObject("status", "Mật khẩu không trùng khớp!!</br>Xin quý khách vui lòng kiểm tra lại.");
		}
		_mvShase.setViewName("authen/register");
		return _mvShase;
	}
	@RequestMapping(value = {"/authen/logout"}, method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		session.removeAttribute("cart");
		session.removeAttribute("idUser");
		session.removeAttribute("roleID");
		session.removeAttribute("fullname");
		String url = "redirect:/trang-chu/";
		_mvShase.setViewName(url);
		return _mvShase;
	}
	
}
