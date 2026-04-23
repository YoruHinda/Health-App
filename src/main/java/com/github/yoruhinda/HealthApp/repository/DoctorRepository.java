package com.github.yoruhinda.HealthApp.repository;


import com.github.yoruhinda.HealthApp.domain.entity.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Long> {
}
