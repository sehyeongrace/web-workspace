package com.kh.mfw.member.model.service;

import org.apache.ibatis.session.SqlSession;

import static com.kh.mfw.common.Template.getSqlSession;

import com.kh.mfw.member.model.dao.MemberDAO;
import com.kh.mfw.member.model.dto.MemberDTO;

public class MemberService {

	public MemberDTO login(MemberDTO member) {
		// JDBCUtil클래스로부터
		// static Method 구현해놓은
		// getConnection 메서드를 호출하여
		// Connection객체를 반환받았던 말이죠?
		SqlSession sqlSession = getSqlSession();
		// 유효성 검증 => 패스(원래 해야됨)
		MemberDTO loginMember = new MemberDAO().login(sqlSession, member);
		sqlSession.close();
		return loginMember;
	}
	
	
	
}