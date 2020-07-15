package com.carpooling.vride.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.carpooling.vride.model.Login;
import com.carpooling.vride.model.User;

@Repository
public class UserDaoImpl implements UserDao {
  @Autowired
  JdbcTemplate jdbcTemplate;
  public void register(User user) {
    String sql = "insert into users values(?,?,?,?,?,?,?,?)";
    jdbcTemplate.update(sql, new Object[] {user.getEmpid(),user.getUsername(), user.getPassword(), user.getFirstname(),
    user.getLastname(), user.getEmail(), user.getAddress(), user.getPhone() });
    }
    public User validateUser(Login login) {
    String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
    + "'";
    List<User> users = jdbcTemplate.query(sql, new UserMapper());
    return users.size() > 0 ? users.get(0) : null;
    }
/*	@Override
	public User findUserByUserName(String username) {
		Collection<User> appUsers = USERS_MAP.values();
        for (User u : appUsers) {
            if (u.getUsername().equals(username)) {
                return u;
            }
        }
		return null;
	}
	@Override
	public User findUserByEmail(String email) {
		Collection<User> appUsers = USERS_MAP.values();
        for (User u : appUsers) {
            if (u.getEmail().equals(email)) {
                return u;
            }
        }
		return null;
	}
	*/

  }
  class UserMapper implements RowMapper<User> {
  public User mapRow(ResultSet rs, int arg1) throws SQLException {
    User user = new User();
    user.setEmpid(rs.getInt("empid"));
    user.setUsername(rs.getString("username"));
    user.setPassword(rs.getString("password"));
    user.setFirstname(rs.getString("firstname"));
    user.setLastname(rs.getString("lastname"));
    user.setEmail(rs.getString("email"));
    user.setAddress(rs.getString("address"));
    user.setPhone(rs.getInt("phone"));
    return user;
  }
}
