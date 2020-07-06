package com.service;

import com.dao.CommentDao;

public class CommentService {
    public boolean tetxarea(String name, String textarea) {
        CommentDao commentDao = new CommentDao();
        boolean bool = commentDao.comment(name,textarea);
        return bool;
    }

    public boolean name() {
        CommentDao commentDao = new CommentDao();
        boolean bool = commentDao.name();
        return bool;
    }
}
