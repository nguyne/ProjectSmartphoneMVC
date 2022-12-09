package ProjectSmartphoneMVC.Service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ProjectSmartphoneMVC.Entity.product_type;
import ProjectSmartphoneMVC.Entity.products;
@Service
public interface IHomeService {
	@Autowired
	public List<products> getDataProducts();
	@Autowired
	public List<product_type> getDataProduct_type();
}
