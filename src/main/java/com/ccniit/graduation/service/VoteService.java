package com.ccniit.graduation.service;

import java.util.List;

import com.ccniit.graduation.exception.IException;
import com.ccniit.graduation.pojo.db.Vote;
import com.ccniit.graduation.pojo.qo.PagedQuery;
import com.ccniit.graduation.pojo.qo.VoteCreater;
import com.ccniit.graduation.pojo.qo.VotePublishVo;
import com.ccniit.graduation.pojo.vo.VoteVo;

/**
 * Vote相关的接口
 */
public interface VoteService {

	public static enum VoteSelectCondition {
		tableName, url
	}

	/**
	 * 创建一个新的投票
	 * 
	 * @throws IException
	 */
	Long createVote(VoteCreater creater) throws IException;

	/**
	 * 使用直接的方式创建
	 */
	Long createVote(Vote vote);

	/**
	 * Vote查询使用缓存
	 * 
	 * @param vote
	 * @return Vote
	 * @throws IException
	 */
	Vote selectVote(long vote) throws IException;

	/**
	 * Vote查询使用Mongodb集合名/url
	 * 
	 * @param condition
	 * @see com.ccniit.graduation.service.VoteService.VoteSelectCondition;
	 * @param param
	 *            tableName/url
	 */
	Vote selectVote(VoteSelectCondition condition, String param) throws IException;

	/**
	 * 查询一个VoteVo,使用缓存
	 * 
	 * @param Vote.id
	 * @return VoteVo(use VoteToVoteVo)
	 * 
	 * @throws IException
	 */
	VoteVo selectVoteVo(long vote) throws IException;

	/**
	 * 使用VoteQuery查询Votes,使用selectVoteVo方法
	 * 
	 * @param VoteQuery
	 * @return List<VoteVo>
	 * @throws IException
	 */
	List<VoteVo> selectVoteVos(PagedQuery query) throws IException;

	Integer updateVoteByPublish(VotePublishVo publishVo, Long author) throws IException;

}
