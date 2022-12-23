package ProjectSmartphoneMVC.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Dto.ProductManageDto;
import ProjectSmartphoneMVC.Dto.UsersManageDto;
import ProjectSmartphoneMVC.Entity.Users;
import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;
@Service
public interface IHomeService {
	@Autowired
	public List<products> getDataProducts();
	@Autowired
	public List<product_type> getDataProduct_type();
	@Autowired
	public List<products> getDataProductsDetail(String id);
	@Autowired
	public List<ProductManageDto> getDataProductSeeMore(String id);
	@Autowired
	public int insert(Users users);
	@Autowired
	public List<UsersManageDto> getDataUsers(String userName, String password);
}
