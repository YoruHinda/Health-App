package com.github.yoruhinda.HealthApp.controller;

import com.github.yoruhinda.HealthApp.domain.entity.Doctor;
import com.github.yoruhinda.HealthApp.domain.entity.Patient;
import com.github.yoruhinda.HealthApp.services.AuthService;
import com.github.yoruhinda.HealthApp.services.DoctorService;
import com.github.yoruhinda.HealthApp.services.PatientService;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api")
public class HealthAppController {
    private DoctorService doctorService;
    private PatientService patientService;
    private AuthService authService;
    private EntityManager entityManager;

    @Autowired
    public HealthAppController(DoctorService doctorService, PatientService patientService, AuthService authService, EntityManager entityManager) {
        this.doctorService = doctorService;
        this.patientService = patientService;
        this.authService = authService;
        this.entityManager = entityManager;
    }

    @GetMapping("/doctors")
    public ResponseEntity<List<Doctor>> doctors(){
        return ResponseEntity.ok(doctorService.findAll());
    }

    @GetMapping("/patients")
    public ResponseEntity<List<Patient>> patients(){
        return ResponseEntity.ok(patientService.findAll());
    }

    @GetMapping("/login")
    public String login(String username, String password){
        if(authService.login(username, password)){
            return "Success";
        }
        return "Failure";
    }

    @PostMapping("/patients")
    @Transactional
    public void create(@RequestBody Patient p) {
        entityManager.persist(p);
    }

    @DeleteMapping("/patients/{id}")
    @Transactional
    public void delete(@PathVariable Long id) {
        Patient p = entityManager.find(Patient.class, id);
        entityManager.remove(p);
    }
}
