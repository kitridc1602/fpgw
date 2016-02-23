package com.kitri.fpgw.model;

import java.util.Date;

public class BoardMainDto {
	
	private int intSeq; //글번호
	private int intPseq; // 부모글번호
	private String strGroup; //게시판 그룹
	private String strGroupCode; //게시판 그룹 코드
	private String strKind; // 게시판 종류
	private String strKindCode; //게시판 종류코드
	private String strTitle; //글제목
	private String strDetailComment; //글내용
	private String strWriterCode; // 작성자코드
	private String strEditerCode; //수정자코드
	private String strViewerCode; //조회자 코드
	private String strFilerCode; //첨부파일등록자 코드
	private String strName; //유저이름
	private String strId;  //유저아이디
	private String strComment; //댓글내용
	private String strCommenterCode; //댓글 작성자
	private String strFaceName; //댓글사용자이미지
	private Date datComment_Date; //코멘트 작성시간	
	private Date datGet_Date; //작성시간
	private Date datEdit_Date; //수정시간
	private Date datView_Date; // 조회시간
	private Date datFile_Date; //파일첨부 시간	
	private String attachFileNo; //첨부파일 번호
	private int intBf_Bm_Seq; // 파일첨부에 대한 게시판 번호
	private int intBf_Seq; //첨부파일순번
	private String strBf_OriginalName; //원본파일이름
	private String strBf_SaveName; //저장파일명
	private String strBf_Path; //파일저장경로
	
	private String strSearch; //검색하기
	
	//페이징 추가해야함

}
