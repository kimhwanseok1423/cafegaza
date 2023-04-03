package service;

import java.util.List;

import dto.TopDTO;

public interface TopService {
	
//	public void toplist(TopDTO dto) throws Exception;
	public List<TopDTO> selectGetFile(String data)throws Exception;

}
