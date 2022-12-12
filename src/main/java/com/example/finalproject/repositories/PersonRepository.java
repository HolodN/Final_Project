package com.example.finalproject.repositories;

import com.example.finalproject.models.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PersonRepository extends JpaRepository<Person, Integer> {
    // Получаем запись из БД по логину
    Optional<Person> findByLogin(String login);

    Optional<Person> findById(int id);



    @Query(value="SELECT * FROM person", nativeQuery = true)
    List<Person> findAllUsers();






}
