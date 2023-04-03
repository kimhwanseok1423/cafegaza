package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.TopDAO;
import dto.TopDTO;
@Service
public class TopServiceImp implements TopService{
	
	@Autowired//쓸때마다 new로해서 객체생성안하고 1개로 계속 돌려쓰려고
	TopDAO topmapper;
	
	public void setTopmapper(TopDAO topmapper) {
		this.topmapper = topmapper;
	}

	@Override
	public List<TopDTO> selectGetFile(String data) throws Exception {
		return topmapper.selectGetFile(data);
	}

}
