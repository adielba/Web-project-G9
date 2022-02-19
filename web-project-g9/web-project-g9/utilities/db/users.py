from utilities.db.db_manager import dbManager


class Users:
    @staticmethod
    def get_user(email):
        return dbManager.fetch(f"SELECT * FROM users WHERE email='{email}'")

    @staticmethod
    def insert_user(email, first_name, last_name, phone_number, password):
        return dbManager.commit(
            f"INSERT INTO users (email, first_name, last_name, phone_number, password) VALUES ('{email}', '{first_name}','{last_name}','{phone_number}', '{password}')")

    @staticmethod
    def update_password(user_email, password):
        return dbManager.commit(f"UPDATE users SET password='{password}' WHERE email='{user_email}'")

    @staticmethod
    def delete_user(email):
        return dbManager.commit(f"DELETE FROM users WHERE email='{email}'")

