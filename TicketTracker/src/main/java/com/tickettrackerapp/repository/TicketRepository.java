package com.tickettrackerapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.tickettrackerapp.entity.Ticket;

@Repository

public interface TicketRepository extends JpaRepository<Ticket,Integer> {
	

}
