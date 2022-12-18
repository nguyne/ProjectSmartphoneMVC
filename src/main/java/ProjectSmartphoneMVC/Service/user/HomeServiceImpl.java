package ProjectSmartphoneMVC.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Dao.Product_typeDao;
import ProjectSmartphoneMVC.Dao.ProductsDao;
import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private ProductsDao productsDao;
	@Autowired
	private Product_typeDao product_typeDao;
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

}
