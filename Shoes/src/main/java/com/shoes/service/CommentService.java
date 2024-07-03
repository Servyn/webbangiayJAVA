package com.shoes.service;

import com.shoes.entity.Comment;
import com.shoes.model.request.CreateCommentPostRequest;
import com.shoes.model.request.CreateCommentProductRequest;
import org.springframework.stereotype.Service;

@Service
public interface CommentService {
    Comment createCommentPost(CreateCommentPostRequest createCommentPostRequest,long userId);
    Comment createCommentProduct(CreateCommentProductRequest createCommentProductRequest, long userId);
}
