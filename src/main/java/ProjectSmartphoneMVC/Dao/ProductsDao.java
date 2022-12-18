package ProjectSmartphoneMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ProjectSmartphoneMVC.Entity.MapperProduct;
import ProjectSmartphoneMVC.Entity.products;

@Repository
public class ProductsDao extends BaseDao{
	
	public List<products> getDataProducts(){
		List<products> list = new ArrayList<products>();
		String sql = "SELECT * FROM product";
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	public List<products> getDataProductsDetail(String id){
		List<products> list = new ArrayList<products>();
		String sql = "SELECT * FROM product Where id="+id;
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
}
