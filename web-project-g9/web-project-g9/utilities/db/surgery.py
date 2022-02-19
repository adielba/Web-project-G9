from utilities.db.db_manager import dbManager


class Surgery:
    @staticmethod
    def get_All(email):
        return dbManager.fetch(f"SELECT * FROM surgery WHERE email='{email}'")

    @staticmethod
    def get_future_surgeries(email):
        return dbManager.fetch(f"SELECT * FROM surgery WHERE email='{email}' AND surgery_date>=CURRENT_DATE()")

    @staticmethod
    def insert_surgery(email,type_of_surgery,surgery_date,type_of_animal,animal_name):
        return dbManager.commit(
            f"INSERT INTO surgery (type_of_surgery, clientEmail, surgery_date, type_of_animal,animal_name) VALUES ('{type_of_surgery}', '{email}','{surgery_date}','{type_of_animal}','{animal_name}')")

    @staticmethod
    def check_if_surgery_date(date):
        return dbManager.fetch(f"SELECT * FROM surgery WHERE surgery_date='{date}'")

    @staticmethod
    def update_password(user_email, password):
        return dbManager.commit(f"UPDATE users SET password='{password}' WHERE email='{user_email}'")

    @staticmethod
    def delete_user(email):
        return dbManager.commit(f"DELETE FROM users WHERE email='{email}'")

    @staticmethod
    def get_all_surgery_types(email):
        return dbManager.fetch(f"SELECT * FROM Surgery_types")


