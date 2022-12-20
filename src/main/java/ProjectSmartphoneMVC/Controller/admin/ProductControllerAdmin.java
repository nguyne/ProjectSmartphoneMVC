package ProjectSmartphoneMVC.Controller.admin;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import ProjectSmartphoneMVC.Entity.products;


@Controller
public class ProductControllerAdmin extends BaseControllerAdmin{
	
	@RequestMapping(value = {"/admin/product"} , method = RequestMethod.GET)
	public ModelAndView product() {
		_mvShase.setViewName("admin/manageProduct");
		_mvShase.addObject("status", null);
		_mvShase.addObject("productManage", _homeService.getDataManageDtos());
		_mvShase.addObject("productManageUpdate", null);
		_mvShase.addObject("product_type", _homeService.getDataProduct_type());
		return _mvShase;
	}
	
	@RequestMapping(value = {"/admin/product/editor"}, method = RequestMethod.GET)
	public ModelAndView addProduct() {
		_mvShase.setViewName("admin/editorProduct");
		_mvShase.addObject("product", new products());
		_mvShase.addObject("productManageUpdate", null);
		return _mvShase;
	}
	
	@RequestMapping(value = {"/admin/product/editor"}, method = RequestMethod.POST)
	public ModelAndView CreateProduct(@ModelAttribute("product") products product) {
		if(product.getProduct_type() != 0 && product.getThumnail() != null) {
			int count = _homeService.addProduct(product);
			if(count >0) {
				_mvShase.addObject("status", "Thêm Sản Phẩm Thành Công!!");
				_mvShase.addObject("productManageUpdate", null);
				_mvShase.addObject("product_type", _homeService.getDataProduct_type());
				_mvShase.setViewName("admin/editorProduct");
			}else {
				_mvShase.addObject("status", "Thêm Sản Phẩm Thất Bại!!");
				_mvShase.setViewName("admin/editorProduct");
				_mvShase.addObject("productManageUpdate", null);
				_mvShase.addObject("product_type", _homeService.getDataProduct_type());
			}
		}else {
			_mvShase.addObject("status", "Thêm Sản Phẩm Thất Bại!!");
			_mvShase.setViewName("admin/editorProduct");
			_mvShase.addObject("productManageUpdate", null);
			_mvShase.addObject("product_type", _homeService.getDataProduct_type());
		}
		return _mvShase;
	}
	
	@RequestMapping(value = {"/admin/product/update"}, method = RequestMethod.GET)
	public ModelAndView updateProduct(@RequestParam String id) {
		_mvShase.addObject("product", new products());
		_mvShase.setViewName("admin/editorProduct");
		_mvShase.addObject("productManageUpdate", _homeService.getDataManageDtos(id));
		_mvShase.addObject("product_type", _homeService.getDataProduct_type());
		return _mvShase;
	}
	
	@RequestMapping(value = {"/admin/product/update"}, method = RequestMethod.POST)
	public ModelAndView UpdateProduct(@ModelAttribute("product") products product, @RequestParam("avatar1") String avatar1) {
		if(product.getProduct_type() != 0) {
			if(product.getThumnail() == "") {
				product.setThumnail(avatar1);
			}
			int count = _homeService.Update(product);
			if(count >0) {
				_mvShase.addObject("status", "Sửa Sản Phẩm Thành Công!!");
				_mvShase.setViewName("admin/editorProduct");
			}else {
				_mvShase.addObject("status", "Sửa Sản Phẩm Thất Bại!!");
				_mvShase.addObject("product_type", _homeService.getDataProduct_type());
				_mvShase.setViewName("admin/editorProduct");
				
			}
		}else {
			_mvShase.addObject("status", "Sửa Sản Phẩm Thất Bại!!");
			_mvShase.addObject("product_type", _homeService.getDataProduct_type());
			_mvShase.setViewName("admin/editorProduct");
			
		}
		return _mvShase;
	}
	
	/*
	 * Hàm tạo folder để lưu ảnh
	 * */
	public void saveFile(products product, MultipartFile file) {
		if(null != file && !file.isEmpty()) {
			/*
			 * lưu ảnh vào file
			 * tạo folder để lưu file.
			 * File.separator = "/"
			 * dirFile.mkdir(); sẻ tạo ra folder image
			 * tạo file hình.
			 * */
			try {
				byte[] bytes = file.getBytes();
				String rootPath = System.getProperty("catalina.home");
				File dirFile = new File(rootPath+File.separator+"image");
				if(!dirFile.exists()) {
					dirFile.mkdir();
				}
				String nameString = product.getThumnail();
				File saveFile = new File(dirFile.getAbsoluteFile()+File.separator+nameString);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(saveFile));
				stream.write(bytes);
				stream.close();
			} catch (Exception e) {
			}
		}
	}
}
