package com.shoes.service;


import com.shoes.entity.User;
import com.shoes.model.dto.UserDTO;
import com.shoes.model.request.ChangePasswordRequest;
import com.shoes.model.request.CreateUserRequest;
import com.shoes.model.request.UpdateProfileRequest;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    List<UserDTO> getListUsers();

    Page<User> adminListUserPages(String fullName, String phone, String email, Integer page);

    User createUser(CreateUserRequest createUserRequest);

    void changePassword(User user, ChangePasswordRequest changePasswordRequest);

    User updateProfile(User user, UpdateProfileRequest updateProfileRequest);
}
