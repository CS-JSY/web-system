package com.mapper;
import com.entity.User;

/**
 * �û����
 */
public interface UserMapper {
	/**
	 * �����û�������������¼
	 * @param s �û���������
	 * @return �û���Ϣ
	 */
	User loginByNameOrEmail(String s);
}
