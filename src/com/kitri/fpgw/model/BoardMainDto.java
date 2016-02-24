package com.kitri.fpgw.model;

import java.util.Date;

public class BoardMainDto {
	
	private int intSeq; //글번호
	private int intNum; //해당게시판글번호 rownum
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
	
	private int intHit; //조회수
	private String strSearch; //검색하기
	
	//페이징 추가해야함
	
	public BoardMainDto(){}

	public BoardMainDto(int intSeq, int intNum, int intPseq, String strGroup, String strGroupCode, String strKind,
			String strKindCode, String strTitle, String strDetailComment, String strWriterCode, String strEditerCode,
			String strViewerCode, String strFilerCode, String strName, String strId, String strComment,
			String strCommenterCode, String strFaceName, Date datComment_Date, Date datGet_Date, Date datEdit_Date,
			Date datView_Date, Date datFile_Date, String attachFileNo, int intBf_Bm_Seq, int intBf_Seq,
			String strBf_OriginalName, String strBf_SaveName, String strBf_Path, int intHit, String strSearch) {
		super();
		this.intSeq = intSeq;
		this.intNum = intNum;
		this.intPseq = intPseq;
		this.strGroup = strGroup;
		this.strGroupCode = strGroupCode;
		this.strKind = strKind;
		this.strKindCode = strKindCode;
		this.strTitle = strTitle;
		this.strDetailComment = strDetailComment;
		this.strWriterCode = strWriterCode;
		this.strEditerCode = strEditerCode;
		this.strViewerCode = strViewerCode;
		this.strFilerCode = strFilerCode;
		this.strName = strName;
		this.strId = strId;
		this.strComment = strComment;
		this.strCommenterCode = strCommenterCode;
		this.strFaceName = strFaceName;
		this.datComment_Date = datComment_Date;
		this.datGet_Date = datGet_Date;
		this.datEdit_Date = datEdit_Date;
		this.datView_Date = datView_Date;
		this.datFile_Date = datFile_Date;
		this.attachFileNo = attachFileNo;
		this.intBf_Bm_Seq = intBf_Bm_Seq;
		this.intBf_Seq = intBf_Seq;
		this.strBf_OriginalName = strBf_OriginalName;
		this.strBf_SaveName = strBf_SaveName;
		this.strBf_Path = strBf_Path;
		this.intHit = intHit;
		this.strSearch = strSearch;
	}

	public int getIntSeq() {
		return intSeq;
	}

	public void setIntSeq(int intSeq) {
		this.intSeq = intSeq;
	}

	public int getIntNum() {
		return intNum;
	}

	public void setIntNum(int intNum) {
		this.intNum = intNum;
	}

	public int getIntPseq() {
		return intPseq;
	}

	public void setIntPseq(int intPseq) {
		this.intPseq = intPseq;
	}

	public String getStrGroup() {
		return strGroup;
	}

	public void setStrGroup(String strGroup) {
		this.strGroup = strGroup;
	}

	public String getStrGroupCode() {
		return strGroupCode;
	}

	public void setStrGroupCode(String strGroupCode) {
		this.strGroupCode = strGroupCode;
	}

	public String getStrKind() {
		return strKind;
	}

	public void setStrKind(String strKind) {
		this.strKind = strKind;
	}

	public String getStrKindCode() {
		return strKindCode;
	}

	public void setStrKindCode(String strKindCode) {
		this.strKindCode = strKindCode;
	}

	public String getStrTitle() {
		return strTitle;
	}

	public void setStrTitle(String strTitle) {
		this.strTitle = strTitle;
	}

	public String getStrDetailComment() {
		return strDetailComment;
	}

	public void setStrDetailComment(String strDetailComment) {
		this.strDetailComment = strDetailComment;
	}

	public String getStrWriterCode() {
		return strWriterCode;
	}

	public void setStrWriterCode(String strWriterCode) {
		this.strWriterCode = strWriterCode;
	}

	public String getStrEditerCode() {
		return strEditerCode;
	}

	public void setStrEditerCode(String strEditerCode) {
		this.strEditerCode = strEditerCode;
	}

	public String getStrViewerCode() {
		return strViewerCode;
	}

	public void setStrViewerCode(String strViewerCode) {
		this.strViewerCode = strViewerCode;
	}

	public String getStrFilerCode() {
		return strFilerCode;
	}

	public void setStrFilerCode(String strFilerCode) {
		this.strFilerCode = strFilerCode;
	}

	public String getStrName() {
		return strName;
	}

	public void setStrName(String strName) {
		this.strName = strName;
	}

	public String getStrId() {
		return strId;
	}

	public void setStrId(String strId) {
		this.strId = strId;
	}

	public String getStrComment() {
		return strComment;
	}

	public void setStrComment(String strComment) {
		this.strComment = strComment;
	}

	public String getStrCommenterCode() {
		return strCommenterCode;
	}

	public void setStrCommenterCode(String strCommenterCode) {
		this.strCommenterCode = strCommenterCode;
	}

	public String getStrFaceName() {
		return strFaceName;
	}

	public void setStrFaceName(String strFaceName) {
		this.strFaceName = strFaceName;
	}

	public Date getDatComment_Date() {
		return datComment_Date;
	}

	public void setDatComment_Date(Date datComment_Date) {
		this.datComment_Date = datComment_Date;
	}

	public Date getDatGet_Date() {
		return datGet_Date;
	}

	public void setDatGet_Date(Date datGet_Date) {
		this.datGet_Date = datGet_Date;
	}

	public Date getDatEdit_Date() {
		return datEdit_Date;
	}

	public void setDatEdit_Date(Date datEdit_Date) {
		this.datEdit_Date = datEdit_Date;
	}

	public Date getDatView_Date() {
		return datView_Date;
	}

	public void setDatView_Date(Date datView_Date) {
		this.datView_Date = datView_Date;
	}

	public Date getDatFile_Date() {
		return datFile_Date;
	}

	public void setDatFile_Date(Date datFile_Date) {
		this.datFile_Date = datFile_Date;
	}

	public String getAttachFileNo() {
		return attachFileNo;
	}

	public void setAttachFileNo(String attachFileNo) {
		this.attachFileNo = attachFileNo;
	}

	public int getIntBf_Bm_Seq() {
		return intBf_Bm_Seq;
	}

	public void setIntBf_Bm_Seq(int intBf_Bm_Seq) {
		this.intBf_Bm_Seq = intBf_Bm_Seq;
	}

	public int getIntBf_Seq() {
		return intBf_Seq;
	}

	public void setIntBf_Seq(int intBf_Seq) {
		this.intBf_Seq = intBf_Seq;
	}

	public String getStrBf_OriginalName() {
		return strBf_OriginalName;
	}

	public void setStrBf_OriginalName(String strBf_OriginalName) {
		this.strBf_OriginalName = strBf_OriginalName;
	}

	public String getStrBf_SaveName() {
		return strBf_SaveName;
	}

	public void setStrBf_SaveName(String strBf_SaveName) {
		this.strBf_SaveName = strBf_SaveName;
	}

	public String getStrBf_Path() {
		return strBf_Path;
	}

	public void setStrBf_Path(String strBf_Path) {
		this.strBf_Path = strBf_Path;
	}

	public int getIntHit() {
		return intHit;
	}

	public void setIntHit(int intHit) {
		this.intHit = intHit;
	}

	public String getStrSearch() {
		return strSearch;
	}

	public void setStrSearch(String strSearch) {
		this.strSearch = strSearch;
	}

	
}
	