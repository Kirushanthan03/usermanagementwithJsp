package org.hsenidmobile.usermanagement.service;


import org.hsenidmobile.usermanagement.model.User;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {
    
    // Static list to store users (in-memory storage)
    private static List<User> userList = new ArrayList<>();
    private static int userIdCounter = 1;
    

    

    
    // Create user from User object (for form binding)
    public User createUser(User user) {
        user.setUserId(userIdCounter++);
        userList.add(user);
        return user;
    }
    
    // Get user by ID
    public User getUserById(int userId) {
        for (User user : userList) {
            if (user.getUserId() == userId) {
                return user;
            }
        }
        return null; // User not found
    }
    
    // Get all users
    public List<User> getAllUsers() {
        return new ArrayList<>(userList); // Return copy to prevent external modification
    }
    
    // Get total number of users
    public int getUserCount() {
        return userList.size();
    }
    

}