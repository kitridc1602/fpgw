package com.kitri.fpgw.model;

public class UserBFModifyDto {

	private UserMainModifyDto userMainModifyDto;
	private UserDetailModifyDto userDetailModifyDto;
	private UserImageModifyDto userImageModifyDto;
	
	public UserBFModifyDto() {
	}

	public UserBFModifyDto(UserMainModifyDto userMainModifyDto, UserDetailModifyDto userDetailModifyDto,
			UserImageModifyDto userImageModifyDto) {
		this.userMainModifyDto = userMainModifyDto;
		this.userDetailModifyDto = userDetailModifyDto;
		this.userImageModifyDto = userImageModifyDto;
	}

	public UserMainModifyDto getUserMainModifyDto() {
		return userMainModifyDto;
	}

	public void setUserMainModifyDto(UserMainModifyDto userMainModifyDto) {
		this.userMainModifyDto = userMainModifyDto;
	}

	public UserDetailModifyDto getUserDetailModifyDto() {
		return userDetailModifyDto;
	}

	public void setUserDetailModifyDto(UserDetailModifyDto userDetailModifyDto) {
		this.userDetailModifyDto = userDetailModifyDto;
	}

	public UserImageModifyDto getUserImageModifyDto() {
		return userImageModifyDto;
	}

	public void setUserImageModifyDto(UserImageModifyDto userImageModifyDto) {
		this.userImageModifyDto = userImageModifyDto;
	}
	
}
