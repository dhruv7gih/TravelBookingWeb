package dao;

import model.User;

public class UserDAO {

    public boolean validate(User user) {

        // Dummy data (DB ki jagah)
        if (user.getUsername().equals("admin") &&
                user.getPassword().equals("admin123")) {
            return true;
        }

        return false;
    }
}