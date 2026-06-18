import requests
import json


class UserManager:

    def __init__(self):
        self.users = None

    def load_users(self):

        response = requests.get(
            "https://jsonplaceholder.typicode.com/users"
        )

        # Issue 1: No status code validation
        data = response.json()

        # Issue 2: Force assumption that data exists
        self.users = data

        return self.users

    def find_user(self, user_id):

        # Issue 3: Possible NoneType iteration
        for user in self.users:
            if user["id"] == user_id:
                return user

        return None

    def save_user(self, user):

        # Issue 4: Broad exception
        try:
            with open("user.json", "w") as file:
                json.dump(user, file)
        except:
            pass

    def print_user_names(self):

        # Issue 5: No validation of keys
        for user in self.users:
            print(user["name"])

    def process_users(self):

        # Issue 6: Unused variable
        count = len(self.users)

        names = []

        for user in self.users:
            names.append(user["name"])

        return names

    def delete_user(self, user_id):

        # Issue 7: Modifying collection while iterating
        for user in self.users:
            if user["id"] == user_id:
                self.users.remove(user)

    def fetch_user(self, user_id):

        # Issue 8: Missing timeout
        response = requests.get(
            f"https://jsonplaceholder.typicode.com/users/{user_id}"
        )

        return response.json()


def calculate_average(numbers):

    # Issue 9: Division by zero
    return sum(numbers) / len(numbers)


def get_first_user(users):

    # Issue 10: Index access without validation
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