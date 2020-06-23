package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestBookVo;

public class daoTest {
	public static void main(String[] args) {
		GuestBookDao bookDao = new GuestBookDao();
	
		//bookDao.bookDelete(1,"1234");

		List<GuestBookVo> list = bookDao.getBookList();
		System.out.println(list.toString());
	}
}
