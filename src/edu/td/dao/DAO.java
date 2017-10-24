package edu.td.dao;

import java.util.List;



public interface DAO {
	/**
	 * ���
	 * 
	 * @param list
	 * @return
	 */
	int insert(Object instance);

	/**
	 * ID��ѯ
	 * 
	 * @param o
	 * @return
	 */
	Object findById(String hql);

	/**
	 * ��ѯȫ��
	 * 
	 * @param hql
	 * @return
	 */
	List<Object> findAll(String hql);

	/**
	 * ����
	 * 
	 * @param list
	 * @return
	 */
	int update(Object instance);
/**
 * ɾ��
 * @param list
 * @return
 */
	int delete(String id);

}
