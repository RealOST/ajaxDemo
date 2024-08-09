package com.sgu.service.impl;

import com.sgu.mapper.BookMapper;
import com.sgu.pojo.Book;
import com.sgu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookMapper bookMapper;

    @Override
    public List<Book> list() {
        List<Book> list = bookMapper.listBook();
        return list;
    }

    @Override
    public int addBook(Book book) {
        int i = bookMapper.addBook(book);
        return i;
    }

    @Override
    public int deleteBook(int id) {
        int delete = bookMapper.delete(id);
        return delete;
    }

    @Override
    public Book getBookById(int id) {
        return bookMapper.getBookById(id);
    }

    @Override
    public int updateBook(Book book) {
        return bookMapper.updateBook(book);
    }
}
