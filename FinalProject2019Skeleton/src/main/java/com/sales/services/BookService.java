package com.sales.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.models.Book;
import com.sales.repositories.BookRepository;

@Service
public class BookService {

@Autowired
static
BookRepository br;

public Iterable<Book> getBooks(){
 
 return br.findAll();
 
}

public static void save(Book b) {
 br.save(b);
}

}