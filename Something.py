import requests
import json


class UserManager:

    def __init__(self):
        self.users = None

    def load_users(self):

        response = requests.get(
            "https://jsonplaceholder.typicode.com/users"
        )

        data = response.json()

        self.users = data

        return self.users

    def find_user(self, user_id):

        for user in self.users:
            if user["id"] == user_id:
                return user

        return None

    def save_user(self, user):

        try:
            with open("user.json", "w") as file:
                json.dump(user, file)
        except:
            pass

    def print_user_names(self):

        for user in self.users:
            print(user["name"])

    def process_users(self):

        count = len(self.users)

        names = []

        for user in self.users:
            names.append(user["name"])

        return names

    def delete_user(self, user_id):

        for user in self.users:
            if user["id"] == user_id:
                self.users.remove(user)

    def fetch_user(self, user_id):

        response = requests.get(
            f"https://jsonplaceholder.typicode.com/users/{user_id}"
        )

        return response.json()


def calculate_average(numbers):

    return sum(numbers) / len(numbers)


def get_first_user(users):

    return users[0]


def clean_function():

    total = 0

    for i in range(10):
        total += i

    return total


if __name__ == "__main__":

    manager = UserManager()

    manager.load_users()

    manager.print_user_names()

    print(calculate_average([]))