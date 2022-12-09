package ProjectSmartphoneMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ProjectSmartphoneMVC.Entity.MapperProduct_type;
import ProjectSmartphoneMVC.Entity.product_type;

@Repository
public class Product_typeDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<product_type> getDataProduct_type(){
		List<product_type> list = new ArrayList<product_type>();
		String sql = "SELECT * FROM product_type";
		list = _jdbcTemplate.query(sql, new MapperProduct_type());
		return list;
	}
}
