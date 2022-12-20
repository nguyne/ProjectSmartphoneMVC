package ProjectSmartphoneMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Dto.ProductManageDto;
import ProjectSmartphoneMVC.Dto.ProductsOrdersManageDto;
import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;
@Service
public interface iHomeServiceAdmin {
	@Autowired
	public List<ProductManageDto> getDataManageDtos();
	@Autowired
	public List<ProductManageDto> getDataManageDtos(String idProduct);
	@Autowired
	public List<product_type> getDataProduct_type();
	@Autowired
	public int addProduct(products product);
	@Autowired
	public int Update(products product);
	@Autowired
	public int addProductType(product_type product_type);
	@Autowired
	public List<ProductsOrdersManageDto> getDataOrdersManageDtos();
	@Autowired
	public List<ProductsOrdersManageDto> getDataOrdersManageDtos(String status);
}
