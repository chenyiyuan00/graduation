package com.ccniit.graduation.service.impl;

import javax.annotation.Resource;

import org.apache.commons.codec.binary.Hex;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.ccniit.graduation.dao.mysql.AuthorDao;
import com.ccniit.graduation.exception.IException;
import com.ccniit.graduation.pojo.vo.EmailToken;
import com.ccniit.graduation.pojo.vo.PhoneToken;
import com.ccniit.graduation.service.AuthorAuthService;
import com.ccniit.graduation.util.LoggerUtils;

@Service("authorAuthService")
public class AuthorAuthServiceImpl implements AuthorAuthService {

	private static final Logger AUTH = LoggerUtils.getAuth();

	private static final String PASSWORD_SALT = "EasyVote";

	@Resource
	AuthorDao authorDao;

	/** 使用加盐密码 */
	@Override
	public String encodePassword(String password) {
		// 密文为40位的16进制字符串
		return Hex.encodeHexString(DigestUtils.sha1(PASSWORD_SALT + password));
	}

	@Override
	public boolean verifyByEmail(EmailToken token) throws IException {
		EmailToken realToken = authorDao.selectAuthorEmailToken(token.getEmail());

		if (realToken.getPassword().equals(token.getPassword())) {
			return true;
		}

		AUTH.error("{} is error token!", token);

		return false;
	}

	@Override
	public boolean verifyByPhone(PhoneToken token) throws IException {
		// TODO Auto-generated method stub
		return false;
	}

}
