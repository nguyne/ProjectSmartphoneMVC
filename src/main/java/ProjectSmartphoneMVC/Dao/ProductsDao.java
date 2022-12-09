package ProjectSmartphoneMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import ProjectSmartphoneMVC.Entity.MapperProduct;
import ProjectSmartphoneMVC.Entity.products;

@Repository
public class ProductsDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<products> getDataProducts(){
		List<products> list = new ArrayList<products>();
		String sql = "SELECT * FROM product";
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
}
