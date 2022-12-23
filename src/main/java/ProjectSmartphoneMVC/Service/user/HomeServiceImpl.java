package ProjectSmartphoneMVC.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Dao.Product_typeDao;
import ProjectSmartphoneMVC.Dao.ProductsDao;
import ProjectSmartphoneMVC.Dao.UsersManageDao;
import ProjectSmartphoneMVC.Dto.ProductManageDto;
import ProjectSmartphoneMVC.Dto.UsersManageDto;
import ProjectSmartphoneMVC.Dto.chitietsp;
import ProjectSmartphoneMVC.Entity.Users;
import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private ProductsDao productsDao;
	@Autowired
	private Product_typeDao product_typeDao;
	@Autowired
	private UsersManageDao usersManageDao;
	@Override
	public List<products> getDataProducts() {
		return productsDao.getDataProducts();
	}
	@Override
	public List<product_type> getDataProduct_type() {
		return product_typeDao.getDataProduct_type();
	}
	@Override
	public List<products> getDataProductsDetail(String id) {
		return productsDao.getDataProductsDetail(id);
	}
	@Override
	public List<ProductManageDto> getDataProductSeeMore(String id) {
		return productsDao.getDataProductSeeMore(id);
	}
	@Override
	public int insert(Users users) {
		return usersManageDao.insert(users);
	}
	@Override
	public List<UsersManageDto> getDataUsers(String userName, String password) {
		return usersManageDao.getDataUsers(userName, password);
	}
	@Override
	public List<chitietsp> getDataProduct(String id) {
		return productsDao.getDataProduct(id);
	}
	@Override
	public List<chitietsp> getDataDiscountText(String id) {
		return productsDao.getDataDiscountText(id);
	}
	@Override
	public List<chitietsp> getDataConfiguration(String id) {
		return productsDao.getDataConfiguration(id);
	}
	@Override
	public List<products> getDataProductType(String id) {
		return productsDao.getDataProductType(id);
	}
	@Override
	public List<products> getDataProductPaginate(String id, int start, int limit) {
		return productsDao.getDataProductPaginate(id, start, limit);
	}
}
