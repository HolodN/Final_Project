package com.example.finalproject.services;

import com.example.finalproject.models.Order;
import com.example.finalproject.models.Person;
import com.example.finalproject.repositories.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class PersonService {
    private final PersonRepository personRepository;

    private final PasswordEncoder passwordEncoder;




    @Autowired
    public PersonService(PersonRepository personRepository, PasswordEncoder passwordEncoder) {
        this.personRepository = personRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public Person getPersonFindByLogin(Person person){
        Optional<Person> person_db = personRepository.findByLogin(person.getLogin());
        return person_db.orElse(null);
    }

    @Transactional
    public void register(Person person){
        person.setPassword(passwordEncoder.encode(person.getPassword()));
        person.setRole("ROLE_USER");
        personRepository.save(person);
    }


    public List<Person> getAllUsers(){
        return personRepository.findAllUsers();
    }

    public Person getPersonId(int id){
        Optional<Person> optionalPerson = personRepository.findById(id);
        return optionalPerson.orElse(null);
    }

    @Transactional
    public void updateRoleUser(Person person){
        person.setRole("ROLE_SUPER");
        personRepository.save(person);
    }

    @Transactional
    public void updateRoleAdmin(Person person){
        person.setRole("ROLE_USER");
        personRepository.save(person);
    }

    @Transactional
    public void updateRoleSuperDown(Person person){
        person.setRole("ROLE_USER");
        personRepository.save(person);
    }

    @Transactional
    public void updateRoleSuperUp(Person person){
        person.setRole("ROLE_POWER");
        personRepository.save(person);
    }

    @Transactional
    public void updateRolePowerDown(Person person){
        person.setRole("ROLE_SUPER");
        personRepository.save(person);
    }

}
