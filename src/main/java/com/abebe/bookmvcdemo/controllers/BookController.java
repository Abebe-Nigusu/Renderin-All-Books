package com.abebe.bookmvcdemo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.abebe.bookmvcdemo.services.BookService;

@Controller
public class BookController {
	
	 private final BookService bookService;
	    public BookController(BookService bookService){
	        this.bookService = bookService;
	        }

	@GetMapping("/books/{id}")
	public String oneDonation(@PathVariable("id") Long id, Model model) {
		model.addAttribute("book", bookService.findBook(id));
		return "show.jsp";
	}
	
	@GetMapping("/books")
	public String allBooks(Model model) {
		model.addAttribute("allBooks", bookService.allBooks());
		return "index.jsp";
	}

}
