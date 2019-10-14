package com.vir.dao;

import java.util.List;

import com.vir.model.Payment;

public interface PaymentDAO {
	List<Payment> getAll();
	Payment findById(int id);
	boolean addPayment(Payment p);
}
