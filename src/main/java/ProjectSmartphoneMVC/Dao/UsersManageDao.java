package ProjectSmartphoneMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import ProjectSmartphoneMVC.Dto.MapperUserManage;
import ProjectSmartphoneMVC.Dto.UsersManageDto;
import ProjectSmartphoneMVC.Entity.Users;

@Repository
public class UsersManageDao extends BaseDao{
	
	public List<UsersManageDto> getDataUsers(){
		List<UsersManageDto> list = new ArrayList<UsersManageDto>();
		String sqlString = "SELECT u.*,r.name AS role_name FROM user u INNER JOIN role r ON u.role_id = r.id ORDER BY u.created_at DESC";
		list = _jdbcTemplate.query(sqlString, new MapperUserManage());
		return list;
	}
	public List<UsersManageDto> getDataUsers(String id){
		List<UsersManageDto> list = new ArrayList<UsersManageDto>();
		String sqlString = "SELECT u.*,r.name AS role_name FROM user u INNER JOIN role r ON u.role_id = r.id WHERE u.id ="+id;
		list = _jdbcTemplate.query(sqlString, new MapperUserManage());
		return list;
	}
	public int Update(Users users) {
		String sql = "UPDATE user SET fullname='"+users.getFullname()+"',email='"+users.getEmail()+"',phone_number='"+users.getPhone_number()+"'"
				+ ",address='"+users.getAddress()+"',role_id='"+users.getRole_id()+"' WHERE id="+users.getId();
		int count = _jdbcTemplate.update(sql);
		return count;
	}
}
