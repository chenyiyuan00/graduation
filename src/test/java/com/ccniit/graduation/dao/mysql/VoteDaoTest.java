package com.ccniit.graduation.dao.mysql;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.slf4j.Logger;
import org.springframework.test.annotation.Rollback;
import org.springframework.transaction.annotation.Transactional;

import com.ccniit.graduation.BaseTest;
import com.ccniit.graduation.pojo.db.Vote;
import com.ccniit.graduation.pojo.db.Vote.VoteCategory;
import com.ccniit.graduation.pojo.qo.VoteQueryByCategory;
import com.ccniit.graduation.util.DateUtils;
import com.ccniit.graduation.util.StringUtils;

public class VoteDaoTest extends BaseTest {

	private final Logger LOG = org.slf4j.LoggerFactory.getLogger("VoteDaoTest");

	@Resource
	VoteDao voteDao;

	@Test
	@Transactional
	@Rollback(true)
	public void testInsertVote() {
		String tableName = StringUtils.getUUID();
		Vote vote = new Vote(tableName, VoteCategory.info.toString(), 1, "vote title",
				DateUtils.getAfterDate(null, DateUtils.MODEL_WEEK, 2));
		voteDao.insertVote(vote);
		assertNotEquals(vote.getId(), new Long(0));
	}

	@Test
	@Transactional
	@Rollback(true)
	public void testUpdateVoteProgress() {
		int result = voteDao.updateVoteProgress(4, 20);
		assertEquals(1, result);
	}

	@Test
	@Transactional
	@Rollback(true)
	public void testUpdateVoteEndDate() {
		Integer result = voteDao.updateVoteEndDate(4, DateUtils.getAfterDate(null, DateUtils.MODEL_WEEK, 1));
		assertEquals(1, result.intValue());
	}

	@Test
	public void testSelectVoteById() {
		Vote vote = voteDao.selectVoteById(4);
		LOG.debug("vote:{}", vote);
	}

	@Test
	public void testSelectVoteByTableName() {
		Vote vote = voteDao.selectVoteById(4);
		LOG.debug("Vote:{}", vote);
	}

	@Test
	public void testSelectAuthorVotes() {
		VoteQueryByCategory query = new VoteQueryByCategory(1L, VoteCategory.vote.toString());
		List<Long> votes = voteDao.selectAuthorVotesId(query);
		assertNotEquals(0, votes.size());
	}

}
