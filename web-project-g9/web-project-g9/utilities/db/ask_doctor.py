from utilities.db.db_manager import dbManager


class AskDoctor:
    @staticmethod
    def insert_doctor_question(email, first_name, last_name, phone_number, pet_type, message):
        return dbManager.commit(
            f"INSERT INTO ask_doctor (email, first_name, last_name, phone_number, pet_type, message) VALUES ('{email}','{first_name}','{last_name}','{phone_number}', '{pet_type}', '{message}')")
