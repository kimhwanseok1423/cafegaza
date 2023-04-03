package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.DetailDAO;
import dto.DetailDTO;


public class DetailServiceImp implements DetailService{
	@Autowired
	DetailDAO detailmapper;
	
	public void setDetailmapper(DetailDAO detailmapper) {
		this.detailmapper = detailmapper;
	}

	@Override
	public DetailDTO selectGetdetail(String guId) throws Exception {
		// TODO Auto-generated method stub
		return detailmapper.selectOne(guId);
	}

		
}
//return detailmapper.selectGetdetail(data);