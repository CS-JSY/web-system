package com.service;
import com.entity.User;

/**
 * ҵ���ӿ�
 */
public interface UserService {
	/**
	 * �����û����������¼
	 * @param s �˺Ż�����
	 * @return �û���Ϣ
	 */
	User loginByNameOrEmail(String s);
}