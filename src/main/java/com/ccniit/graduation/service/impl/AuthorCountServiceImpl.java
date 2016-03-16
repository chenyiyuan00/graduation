package com.ccniit.graduation.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ccniit.graduation.dao.mysql.AuthorCountDao;
import com.ccniit.graduation.pojo.common.VoteCategoryCount;
import com.ccniit.graduation.service.AuthorCountService;

@Service("authorCountService")
public class AuthorCountServiceImpl implements AuthorCountService {

	@Resource
	AuthorCountDao authorCountDao;

	@Override
	public int countAuthorLinkmanGroup(long authorId) {
		return authorCountDao.countAuthorLinkmanGroup(authorId);
	}

	@Override
	public List<VoteCategoryCount> countAuthorVote(long authorId) {
		return authorCountDao.countAuthorVote(authorId);
	}
}