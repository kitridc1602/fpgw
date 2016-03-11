package com.kitri.fpgw.service;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.kitri.fpgw.dao.UserDao;
import com.kitri.fpgw.model.UserDto;
import com.kitri.fpgw.model.UserImageDto;
import com.kitri.fpgw.model.UserModifyDto;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public UserDto UserSelect(String strCode) throws Exception {

		return userDao.UserSelect(strCode);
	}

	@Override
	public ArrayList<UserDto> UserSelectAll() throws Exception {

		return userDao.UserSelectAll();
	}

	@Override
	public void UserInsert(UserModifyDto userModifyDto, HttpServletRequest request) throws Exception {

		String strCode = userDao.UserInsert(userModifyDto);
		UserFileUpload(request, strCode, userModifyDto.getStrWork_User(), "U");
	}

	@Override
	public void UserModify(UserModifyDto userModifyDto, HttpServletRequest request) throws Exception {

		userDao.UserModify(userModifyDto);
		UserFileUpload(request, userModifyDto.getUM_Code(), userModifyDto.getStrWork_User(), "U");
	}

	@Override
	public void UserDelete(String strCode) throws Exception {

		userDao.UserDelete(strCode);
	}

	private void UserFileUpload(HttpServletRequest request, String strCode, String strWork_User, String strWorkKeyWord) throws Exception{
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while(iterator.hasNext()){
			
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false){
				

				String strOriginalFileName = multipartFile.getOriginalFilename().trim(); 
				String strFileName = strWorkKeyWord + strCode + strOriginalFileName.substring(strOriginalFileName.lastIndexOf("."), strOriginalFileName.length());
				
				System.out.println("-------------file start-------------");
				System.out.println("URL : " + request.getSession().getServletContext().getRealPath(""));
				System.out.println("URL : " + request.getContextPath());
				System.out.println("name : " + multipartFile.getName() + " ");
				System.out.println("filename : " + multipartFile.getOriginalFilename() + " ");
				
				System.out.println("filePath : " + strFileName + " ");
				System.out.println("size : " + multipartFile.getSize() + " ");
				System.out.println("-------------file end-------------");
				
				
				String strUrl = request.getSession().getServletContext().getRealPath("") + "img\\user\\" + strFileName;
				
				multipartFile.transferTo(new File(strUrl));
				
				
				UserImageDto userImageDto = userDao.UserImageSelect(strCode);
				userImageDto.setStrFace_Name(strFileName);
				userImageDto.setStrFace_Path("/img/user/");
				userImageDto.setStrGet_User_Cd(strWork_User);
				
				userDao.UserImageModify(userImageDto);
			}
		}
		
	}

	@Override
	public int UserIdCheck(String strID) throws Exception {

		return userDao.UserIdCheck(strID);
	}
	
	
}
