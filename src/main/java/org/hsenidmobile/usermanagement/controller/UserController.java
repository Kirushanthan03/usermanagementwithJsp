package org.hsenidmobile.usermanagement.controller;


import org.hsenidmobile.usermanagement.model.User;
import org.hsenidmobile.usermanagement.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class UserController {
    
    @Autowired
    private UserService userService;
    
    // Welcome page - Default landing page
    @RequestMapping("/")
    public String welcome(Model model) {
        model.addAttribute("totalUsers", userService.getUserCount());
        return "welcome";  // Returns welcome.jsp
    }
    
    // Alternative welcome mapping
    @RequestMapping("/welcome")
    public String welcomePage(Model model) {
        model.addAttribute("totalUsers", userService.getUserCount());
        return "welcome";
    }
    
    // Login page - GET request
    @GetMapping("/login")
    public String showLoginPage() {
        return "login";  // Returns login.jsp
    }
    
    // Login form submission - POST request
    @PostMapping("/login")
    public String processLogin(@RequestParam String username, 
                             @RequestParam String password, 
                             Model model) {
        // Simple login logic (for demo purposes)
        if ("admin".equals(username) && "password".equals(password)) {
            return "redirect:/userList";  // Redirect to user list on success
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "login";  // Stay on login page with error
        }
    }
    
    // Show create user form - GET request
    @GetMapping("/createUser")
    public String showCreateUserForm(Model model) {
        model.addAttribute("user", new User());  // Empty user object for form binding
        return "createUser";  // Returns createUser.jsp
    }
    
    // Process create user form - POST request
    @PostMapping("/createUser")
    public String processCreateUser(@ModelAttribute("user") User user, Model model) {
        try {
            User createdUser = userService.createUser(user);
            model.addAttribute("success", "User created successfully! User ID: " + createdUser.getUserId());
            model.addAttribute("user", new User());  // Reset form with empty user
        } catch (Exception e) {
            model.addAttribute("error", "Error creating user: " + e.getMessage());
        }
        return "createUser";
    }
    
    // View single user - GET request with parameter
    @GetMapping("/viewUser")
    public String viewUser(@RequestParam("userId") int userId, Model model) {
        User user = userService.getUserById(userId);
        if (user != null) {
            model.addAttribute("user", user);
            return "viewUser";  // Returns viewUser.jsp
        } else {
            model.addAttribute("error", "User not found with ID: " + userId);
            return "redirect:/userList";  // Redirect to user list if user not found
        }
    }
    
    // View all users - GET request
    @GetMapping("/userList")
    public String viewAllUsers(Model model) {
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        model.addAttribute("totalUsers", users.size());
        return "userList";  // Returns userList.jsp
    }
}