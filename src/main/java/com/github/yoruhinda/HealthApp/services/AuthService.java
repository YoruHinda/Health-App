package com.github.yoruhinda.HealthApp.services;

import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AuthService {
    private EntityManager entityManager;

    @Autowired
    public AuthService(EntityManager entityManager) {
        this.entityManager = entityManager;
    }

    public boolean login(String username, String password){
        String sql = "SELECT * FROM patients WHERE email = '" + username + "' AND password = '" + password + "'";
        List<?> result = entityManager.createNativeQuery(sql).getResultList();

        return !result.isEmpty();
    }
}
