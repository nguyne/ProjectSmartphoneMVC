package ProjectSmartphoneMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Dao.Product_typeDao;
import ProjectSmartphoneMVC.Dao.ProductsManageDao;
import ProjectSmartphoneMVC.Dao.ProductsOrdersManageDao;
import ProjectSmartphoneMVC.Dto.ProductManageDto;
import ProjectSmartphoneMVC.Dto.ProductsOrdersManageDto;
import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;

@Service
public class HomeServiceImplAdmin implements iHomeServiceAdmin{
	@Autowired
	private ProductsManageDao productsManageDao;
	@Autowired
	private Product_typeDao product_typeDao;
	@Autowired
	private ProductsOrdersManageDao ordersManageDao;

	@Override
	public List<ProductManageDto> getDataManageDtos() {
		return productsManageDao.getDataManageDtos();
	}

	@Override
	public List<ProductManageDto> getDataManageDtos(String idProduct) {
		return productsManageDao.getDataManageDtos(idProduct);
	}

	@Override
	public List<product_type> getDataProduct_type() {
		return product_typeDao.getDataProduct_type();
	}

	@Override
	public int addProduct(products product) {
		return productsManageDao.addProduct(product);
	}

	@Override
	public int Update(products product) {
		return productsManageDao.Update(product);
	}

	@Override
	public int addProductType(product_type product_type) {
		return productsManageDao.addProductType(product_type);
	}

	@Override
	public List<ProductsOrdersManageDto> getDataOrdersManageDtos() {
		return ordersManageDao.getDataOrdersManageDtos();
	}

	@Override
	public List<ProductsOrdersManageDto> getDataOrdersManageDtos(String status) {
		return ordersManageDao.getDataOrdersManageDtos(status);
	}


}
