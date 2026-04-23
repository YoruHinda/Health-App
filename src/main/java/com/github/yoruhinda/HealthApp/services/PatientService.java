package com.github.yoruhinda.HealthApp.services;

import com.github.yoruhinda.HealthApp.domain.entity.Patient;
import com.github.yoruhinda.HealthApp.repository.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PatientService {
    private PatientRepository patientRepository;

    @Autowired
    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    public List<Patient> findAll(){
        return patientRepository.findAll();
    }

}
