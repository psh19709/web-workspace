package com.sample.app.user;

import com.sample.app.user.util.SqlMapper;

public class UserDao {
	
	private static UserDao instance = new UserDao();
	private UserDao() {}
	public static UserDao getInstance() {
		return instance;
	}

	/**
	 * 신규 사용자 정보가 저장된 User 객체를 전달받아서 SAMPLE_USERS 테이블에 저장한다.
	 * @param user 신규 사용자 정보가 저장된 User객체
	 */
	public void insertUser(User user) {
		SqlMapper.insert("users.insertUser", user);
	}
	
	/**
	 * 지정된 아이디로 사용자정보를 조회해서 반환한다.
	 * @param userId 사용자 아이디
	 * @return User 조회된 사용자 정보, 사용자정보가 존재하지 않으면 null을 반환한다.
	 */
	public User getUserById(String userId) {
		return (User) SqlMapper.selectOne("users.getUserById", userId);
	}
	
	/**
	 * 지정된 이메일로 사용자정보를 조회해서 반환한다.
	 * @param userEmail 사용자 이메일
	 * @return User 조회된 사용자 정보, 사용자정보가 존재하지 않으면 null을 반환한다.
	 */
	public User getUserByEmail(String userEmail) {
		return (User) SqlMapper.selectOne("users.getUserByEmail", userEmail);
	}
}