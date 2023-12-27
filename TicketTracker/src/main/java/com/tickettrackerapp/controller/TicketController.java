package com.tickettrackerapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tickettrackerapp.entity.Ticket;
import com.tickettrackerapp.service.TicketService;

@Controller
@RequestMapping("/tickets")

public class TicketController {
	
	@Autowired
	private TicketService ticketervice;
	
	@GetMapping("/list")
  	public String listTickets(Model model)
	{
		//get all tickets
		List<Ticket> tickets=ticketervice.findAll();
		model.addAttribute("tickets",tickets);	
		return "tickets/list_tickets";
	}
	@GetMapping("/showFromForAdd")
	public String showFromForAdd(Model model)
	{
		//get all tickets
		Ticket ticket=new Ticket();
		//List<Ticket> tickets=ticketervice.findAll();
		model.addAttribute("ticket",ticket);		
		return "tickets/ticket_form";
	}
	@PostMapping("/showFormForUpdate")
	public String showFromForUpdate(@RequestParam("ticketId") int ticketId, Model model) {
		
		//get the book from the database
		Ticket theTicket = ticketervice.findById(ticketId);
		// 1. theBook, ABC, JAVA
		
		// 1. JAVA, JAVA, JAVA
		
		model.addAttribute("book", theTicket);
		return "tickets/ticket_form";

	}
	
	@PostMapping("/save")
	// 	public String saveBook(@RequetBody("book") Book theBook, Model model) {

	public String saveBook(@ModelAttribute("book") Ticket theTicket) {
		
		//save the book object
		ticketervice.save(theTicket);
		
		// 		
		return "redirect:/tickets/list";
		
	}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("ticketId") int ticketId) {
		//delete the book
		ticketervice.deleteById(ticketId);
		return "redirect:/tickets/list";

	}

}
