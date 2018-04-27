package com.ships.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ships.model.OrderInfo;
import com.ships.repositories.OrderInfoInterface;

@Service
public class OrderService {
	@Autowired
	private OrderInfoInterface orderInfoInterface;
	
	public ArrayList<OrderInfo> showAll(){
		return (ArrayList<OrderInfo>) orderInfoInterface.findAll();
	}
	
	public OrderInfo save(OrderInfo orderInfo){
		return orderInfoInterface.save(orderInfo);
	}
}