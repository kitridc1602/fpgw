package com.kitri.fpgw.model;

import java.util.Date;

public class BoardCommentDto {
	private int intSeq; //게시글번호
	private String strCommenterCode; //댓글 작성자
	private String strName; //유저이름
	private String strId;  //유저아이디
	private String strFaceName; //댓글사용자이미지
	private String strComment; //댓글내용
	private Date datComment_Date; //코멘트 작성시간

}
