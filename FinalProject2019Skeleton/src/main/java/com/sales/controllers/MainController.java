package com.sales.controllers;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sales.models.Book;
import com.sales.models.Customer;
import com.sales.models.Loan;
import com.sales.services.BookService;
import com.sales.services.CustomerService;
import com.sales.services.LoanService;

@Controller
public class MainController {
	
	@Autowired
	CustomerService cs;
	@Autowired
	BookService bs;
	@Autowired
	LoanService ls;

	@RequestMapping(value = "/getCustomers", method=RequestMethod.GET)
	public String getCustomers(Model model) {
		ArrayList<Customer> customers = (ArrayList<Customer>) cs.getCustomers();
		model.addAttribute("customers", customers);
		Customer c = new Customer();
		c.setcName("TESTING");
		model.addAttribute("cust", c);
		return "showCustomers";
	}
	
	@RequestMapping(value = "/showBooks", method=RequestMethod.GET)
	public String showBooks(Model model) {
		ArrayList<Book> books = (ArrayList<Book>) bs.getBooks();
		model.addAttribute("books", books);
		return "showBooks";
	}
	
	@RequestMapping(value = "/getLoans", method=RequestMethod.GET)
	public String getLoans(Model model) {
		ArrayList<Loan> loans = (ArrayList<Loan>) ls.getLoans();
		model.addAttribute("loans", loans);
		return "showLoans";
	}
	@RequestMapping(value = "/addCustomer", method=RequestMethod.POST)
	public String addCustomerPOST(@ModelAttribute("customer") Customer customer, Model model) {
		CustomerService.save(customer);
		return "redirect:showCustomers";
	}
	@RequestMapping(value = "/addBook", method=RequestMethod.POST)
	public String addBookPOST(@ModelAttribute("book") Book book, Model model) {
		BookService.save(book);
		return "redirect:showBooks";
	}
	@RequestMapping(value = "/newLoan", method=RequestMethod.POST)
	public String addLoanPOST(@ModelAttribute("loan") Loan loan, Model model) {
		LoanService.save(loan);
		return "redirect:showLoans";
	}
	
}
