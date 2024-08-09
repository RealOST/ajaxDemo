package com.sgu.controller;

import com.sgu.pojo.Book;
import com.sgu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService bookService;

    @RequestMapping("/allBook")
    public List<Book> list(Model model){
        List<Book> list = bookService.list();
        model.addAttribute("list",list);
        return list;
    }

    @RequestMapping("/toAddBook")
    public String preAdd(){
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Book book){
        int i = bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String delete(@PathVariable int bookID){
        int i = bookService.deleteBook(bookID);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBook/{id}")
    public String preUpdateBook(@PathVariable int id, Model model){
        Book book = bookService.getBookById(id);
        model.addAttribute("book",book);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        int i = bookService.updateBook(book);
        return "redirect:/book/allBook";
    }
}
