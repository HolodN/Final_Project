package com.example.finalproject.services;


import com.example.finalproject.models.Order;
import com.example.finalproject.repositories.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(readOnly = true)
public class OrderService {

    private final OrderRepository orderRepository;

    @Autowired
    public OrderService(OrderRepository orderRepository) {this.orderRepository = orderRepository;}

    public List<Order> getAllOrders () {
        return orderRepository.findAll();
    }

    public List<Order> getOrderByLastFourSign(String number){
        return orderRepository.findByLastFourSign(number);
    }
}
