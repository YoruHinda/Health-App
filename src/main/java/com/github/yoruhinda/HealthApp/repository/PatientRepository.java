package com.github.yoruhinda.HealthApp.repository;

import com.github.yoruhinda.HealthApp.domain.entity.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Long> {
}
