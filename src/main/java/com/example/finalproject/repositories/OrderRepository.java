package com.example.finalproject.repositories;

import com.example.finalproject.models.Order;
import com.example.finalproject.models.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findByPerson(Person person);

    List<Order> findAllById(int id);

    @Query(value="SELECT * FROM orders WHERE number LIKE %:test", nativeQuery = true)
    List<Order> findByLastFourSign (String test);

    List<Order> findByNumber(String sign);

    List<Order> findByNumberContaining(String sign);


    List<Order> findAll();

    @Query(value = "SELECT * FROM orders WHERE id = ?1", nativeQuery = true)
    List<Order> findOrderById (int id);

//    Принят, Оформлен, Ожидает, Получен, Отменен
    @Modifying
    @Query(value = "UPDATE orders set status=0 WHERE id = ?1", nativeQuery = true)
    void changeOrderStatusAccepted (int id);
    @Modifying
    @Query(value = "UPDATE orders set status=1 WHERE id = ?1", nativeQuery = true)
    void changeOrderStatusIssued (int id);
    @Modifying
    @Query(value = "UPDATE orders set status=2 WHERE id = ?1", nativeQuery = true)
    void changeOrderStatusWaiting (int id);
    @Modifying
    @Query(value = "UPDATE orders set status=3 WHERE id = ?1", nativeQuery = true)
    void changeOrderStatusReceived (int id);
    @Modifying
    @Query(value = "UPDATE orders set status=4 WHERE id = ?1", nativeQuery = true)
    void changeOrderStatusCancelled (int id);
}
