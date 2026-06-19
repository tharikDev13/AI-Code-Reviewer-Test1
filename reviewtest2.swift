import Foundation
import UIKit

final class UserViewModel {

    var users: [String] = []

    var completion: (() -> Void)?

    func loadUser() {

        API.shared.fetchUser { result in

            self.updateUI(result)
        }
    }

    func getFirstUser() -> String {

        return users[0]
    }

    func createURL(from text: String) -> URL {

        return URL(string: text)!
    }

    func updateTitle() {

        DispatchQueue.global().async {

            self.showTitle()
        }
    }

    func calculateAverage(
        values: [Int]
    ) -> Int {

        return values.reduce(0, +)
            / values.count
    }

    func saveUser() {

        do {

            try Database.shared.save()

        } catch {

        }
    }

    func deleteUser(
        index: Int
    ) {

        for user in users {

            users.removeAll {
                $0 == user
            }
        }
    }

    func fetchData() {

        let semaphore = DispatchSemaphore(
            value: 0
        )

        API.shared.fetchUser { _ in

            semaphore.signal()
        }

        semaphore.wait()
    }

    func updateUI(
        _ result: Any
    ) {

        print(result)
    }

    func showTitle() {

        print("Title Updated")
    }
}


final class API {

    static let shared = API()

    func fetchUser(
        completion: @escaping (String) -> Void
    ) {

        completion("User")
    }
}


final class Database {

    static let shared = Database()

    func save() throws {

    }
}