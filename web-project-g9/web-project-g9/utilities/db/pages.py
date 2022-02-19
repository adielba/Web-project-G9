from utilities.db.db_manager import dbManager


class PagesContent:
    @staticmethod
    def fetchAbout():
        return dbManager.fetch(f"SELECT * FROM about;")
    @staticmethod
    def fetchServices():
        return dbManager.fetch(f"SELECT * FROM services;")
    @staticmethod
    def fetchFaq():
        return dbManager.fetch(f"SELECT * FROM faq;")
    @staticmethod
    def fetchCustomerTalks():
        return dbManager.fetch(f"SELECT * FROM customers_talk;")
    @staticmethod
    def fetchSurgeryTypes():
        return dbManager.fetch(f"SELECT * FROM surgery_types;")


