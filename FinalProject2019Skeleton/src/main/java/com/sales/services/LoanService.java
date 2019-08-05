package com.sales.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Loan;
import com.sales.repositories.LoanRepository;

@Service
public class LoanService {

@Autowired
static
LoanRepository lr;

public Iterable<Loan> getLoans(){
 
 return lr.findAll();
 
}

public static void save(Loan l) {
 lr.save(l);
}

}