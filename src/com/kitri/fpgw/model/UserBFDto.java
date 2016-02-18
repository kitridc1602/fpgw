package com.kitri.fpgw.model;

public class UserBFDto {
	
	private UserMainDto userMainDto;
	private UserDetaileDto userDetailDto;
	private UserImageDto userImageDto;
	
 	public UserBFDto() {
	}

	public UserBFDto(UserMainDto userMainDto, UserDetaileDto userDetailDto, UserImageDto userImageDto) {
		this.userMainDto = userMainDto;
		this.userDetailDto = userDetailDto;
		this.userImageDto = userImageDto;
	}

	public UserMainDto getUserMainDto() {
		return userMainDto;
	}

	public void setUserMainDto(UserMainDto userMainDto) {
		this.userMainDto = userMainDto;
	}

	public UserDetaileDto getUserDetailDto() {
		return userDetailDto;
	}

	public void setUserDetailDto(UserDetaileDto userDetailDto) {
		this.userDetailDto = userDetailDto;
	}

	public UserImageDto getUserImageDto() {
		return userImageDto;
	}

	public void setUserImageDto(UserImageDto userImageDto) {
		this.userImageDto = userImageDto;
	}

	
	
}
