package edu.td.dao;

import java.util.List;



public interface DAO {
	/**
	 * 添加
	 * 
	 * @param list
	 * @return
	 */
	int insert(Object instance);

	/**
	 * ID查询
	 * 
	 * @param o
	 * @return
	 */
	Object findById(String hql);

	/**
	 * 查询全部
	 * 
	 * @param hql
	 * @return
	 */
	List<Object> findAll(String hql);

	/**
	 * 更新
	 * 
	 * @param list
	 * @return
	 */
	int update(Object instance);
/**
 * 删除
 * @param list
 * @return
 */
	int delete(String id);

}
