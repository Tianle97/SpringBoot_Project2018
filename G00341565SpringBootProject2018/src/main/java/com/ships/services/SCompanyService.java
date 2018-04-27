package com.ships.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.ShippingCompany;
import com.ships.repositories.SCompanyInterface;

@Service
public class SCompanyService {
	@Autowired
	private SCompanyInterface sCompanyInterface;
	
	public ArrayList<ShippingCompany> showAll(){
		return (ArrayList<ShippingCompany>) sCompanyInterface.findAll();
	}
	
	public ShippingCompany save(ShippingCompany shippingCompany){
		return sCompanyInterface.save(shippingCompany);
	}
	
	public ShippingCompany getShippingCompanyByScid(int scid){
		return sCompanyInterface.findByScid(scid);
	}
}
