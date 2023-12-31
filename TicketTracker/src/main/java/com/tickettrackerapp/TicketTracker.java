package com.tickettrackerapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication(scanBasePackages = {"controller","service","entity", "repository"})
public class TicketTracker {

	public static void main(String[] args) {
		SpringApplication.run(TicketTracker.class, args);
	}

}
