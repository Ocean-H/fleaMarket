package com.wenLi.service;

import java.util.List;

import com.wenLi.entity.Menu;
import com.wenLi.util.entity.Page;

public interface MenuService {

	//获取菜单列表
	Page<Menu> getMenuList(int pc, int ps);

	//根据id查板块
	Menu findMenuById(String id);

	//保存
	boolean saveOrUpdateMenu(Menu menu);

	//获取最大的序号
	Integer getMaxOrder();

	//禁用
	boolean forbiddenMenu(String menuId);

	//启用
	boolean usingMenu(String menuId);

	//获取子菜单列表
	Page<Menu> getSonMenuList(int pc, int ps, String pId);

	//保存子菜单
	boolean saveOrUpdateSonMenu(Menu menu);

	//在首页展示菜单
	boolean showMenu(String menuId);

	//不在首页展示菜单
	boolean notShowMenu(String menuId);

	List<Menu> findUsingMenu();

	List<Menu> findSonMenuByPid(String menuId);

	List<Menu> findAllSonMenuList();


}
