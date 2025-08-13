package org.hsenidmobile.usermanagement.model;

public class User {
    
    // Private fields
    private int userId;
    private String userName;
    private String address;
    private String mobileNum;
    
    // Default constructor - Required for Spring form binding
    public User() {
    }
    
    // Parameterized constructor
    public User(int userId, String userName, String address, String mobileNum) {
        this.userId = userId;
        this.userName = userName;
        this.address = address;
        this.mobileNum = mobileNum;
    }
    
    // Getter and Setter methods
    public int getUserId() {
        return userId;
    }
    
    public void setUserId(int userId) {
        this.userId = userId;
    }
    
    public String getUserName() {
        return userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    public String getAddress() {
        return address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }
    
    public String getMobileNum() {
        return mobileNum;
    }
    
    public void setMobileNum(String mobileNum) {
        this.mobileNum = mobileNum;
    }
    
    // toString method for debugging
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", address='" + address + '\'' +
                ", mobileNum='" + mobileNum + '\'' +
                '}';
    }
}