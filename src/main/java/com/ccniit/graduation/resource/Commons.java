package com.ccniit.graduation.resource;

public interface Commons {

	// String
	public static final String SYSTEM_CHARSET = "UTF-8";

	// SESSION_KEY
	public static final String SESSION_KEY_AUTHOR_ID = "SESSION_AUTHOR_ID_KEY";
	public static final String SESSION_KEY_SHOW_NAME = "SESSION_AUTHOR_SHOW_NAME_KEY";
	public static final String SESSION_KEY_LAST_URL = "SESSION_LAST_URL";

	// page size
	public static final int VOTE_PAGE_SIZE = 20;// 每次查询的投票(Vote)数目
	public static final int LINKMAN_PAGE_SIZE = 50;// 每次查询的联系人(Voter)人数据
	
	//Mime
	public static final String MiME_JSON="application/json";

}
