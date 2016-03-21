package com.ccniit.graduation.service;

import java.util.List;

import com.ccniit.graduation.pojo.common.VoteCategoryCount;
import com.ccniit.graduation.pojo.vo.AuthorContentCounter;

public interface AuthorCountService {

	int countAuthorLinkmanGroup(long authorId);

	List<VoteCategoryCount> countAuthorVote(long authorId);

	AuthorContentCounter getAuthorCounters(long authorId);

}
