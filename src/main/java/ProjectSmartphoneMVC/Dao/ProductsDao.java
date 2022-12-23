package ProjectSmartphoneMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ProjectSmartphoneMVC.Dto.MapperProductManage;
import ProjectSmartphoneMVC.Dto.ProductManageDto;
import ProjectSmartphoneMVC.Entity.MapperProduct;
import ProjectSmartphoneMVC.Entity.products;

@Repository
public class ProductsDao extends BaseDao{
	
	public List<products> getDataProducts(){
		List<products> list = new ArrayList<products>();
		String sql = "SELECT * FROM product ORDER BY created_at DESC LIMIT 10";
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	public List<products> getDataProductsDetail(String id){
		List<products> list = new ArrayList<products>();
		String sql = "SELECT * FROM product Where id="+id;
		list = _jdbcTemplate.query(sql, new MapperProduct());
		return list;
	}
	public products FindProductsByID(String id){
		String sql = "SELECT * FROM product Where id="+id;
		products product  = _jdbcTemplate.queryForObject(sql, new MapperProduct());
		return product;
	}
	public List<ProductManageDto> getDataProductSeeMore(String id){
		List<ProductManageDto> list = new ArrayList<ProductManageDto>();
		String sql = "SELECT p.*,pType.name FROM product p INNER JOIN product_type pType ON p.product_type = pType.id Where product_type ='"+id+"' ORDER BY p.created_at DESC ";
		list = _jdbcTemplate.query(sql, new MapperProductManage());
		return list;
	}
	
}
