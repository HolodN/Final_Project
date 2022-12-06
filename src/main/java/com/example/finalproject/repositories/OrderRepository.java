package com.example.finalproject.repositories;

import com.example.finalproject.models.Order;
import com.example.finalproject.models.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findByPerson(Person person);

    List<Order> findAllById(int id);

    @Query(value="SELECT * FROM orders WHERE (lower(number) LIKE '%?1')", nativeQuery = true)
    List<Order> findByLastFourSign (String sign);

    List<Order> findByNumber(String sign);

    List<Order> findByNumberContaining(String sign);


    List<Order> findAll();
}
