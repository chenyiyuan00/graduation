/**
 * 
 */
package com.ccniit.graduation.dao.mysql;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.ccniit.graduation.mapper.AuthCodeMapper;
import com.ccniit.graduation.pojo.db.AuthCode;

/**
 * @author C.K
 *
 */

@Component("authCodeDao")
public class AuthCodeDao implements AuthCodeMapper {

	@Resource
	AuthCodeMapper authCodeMapper;

	@Override
	public Long insertAuthCode(AuthCode code) {
		authCodeMapper.insertAuthCode(code);
		return code.getId();
	}

	@Override
	public Integer deleteAuthCodes(long vote) {
		return authCodeMapper.deleteAuthCodes(vote);
	}

	@Override
	public String selectAuthCode(long vote, long voter) {
		return authCodeMapper.selectAuthCode(vote, voter);
	}

	@Override
	public String selectProtectedVoteAuthCode(long vote) {
		return authCodeMapper.selectProtectedVoteAuthCode(vote);
	}

	@Override
	public Integer setAuthCodeUsed(long vote, long voter) {
		return authCodeMapper.setAuthCodeUsed(vote, voter);
	}

}
