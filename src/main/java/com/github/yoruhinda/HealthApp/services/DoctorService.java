package com.github.yoruhinda.HealthApp.services;

import com.github.yoruhinda.HealthApp.domain.entity.Doctor;
import com.github.yoruhinda.HealthApp.repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DoctorService {
    private DoctorRepository doctorRepository;

    @Autowired
    public DoctorService(DoctorRepository doctorRepository) {
        this.doctorRepository = doctorRepository;
    }

    public List<Doctor> findAll(){
        return doctorRepository.findAll();
    }
}
