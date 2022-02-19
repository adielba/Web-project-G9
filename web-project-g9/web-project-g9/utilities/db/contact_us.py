from utilities.db.db_manager import dbManager


class ContactUs:
    @staticmethod
    def insert_contact_request(email, first_name, last_name, phone_number):
        return dbManager.commit(
            f"INSERT INTO contact_us (email, first_name, last_name, phone_number) VALUES ('{email}', '{first_name}','{last_name}','{phone_number}')")
