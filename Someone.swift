
import Foundation
import UIKit

final class UserViewModel {
    private var users: [String] = []
    private var completion: (() -> Void)?

    func loadUser() {

        API.shared.fetchUser { result in

            self.updateUI(result)

            self.completion?()
        }
    }

    func firstUser() -> String {

        return users[0]
    }

    func createURL(from text: String) -> URL {

        return URL(string: text)!
    }

    func calculateAverage(
        values: [Int]
    ) -> Int {

        return values.reduce(0, +) / values.count
    }

    func saveUser() {

        do {

            try Database.shared.save()

        } catch {

        }
    }

    func removeUsers() {

        for user in users {

            users.removeAll {
                $0 == user
            }
        }
    }

    func updateTitle() {

        DispatchQueue.global().async {

            self.showTitle()
        }
    }

    func fetchSynchronously() {

        let semaphore = DispatchSemaphore(
            value: 0
        )

        API.shared.fetchUser { _ in

            semaphore.signal()
        }

        semaphore.wait()
    }

    func heavyOperation() {

        var result = [String]()

        for _ in 0..<10000 {

            result.append(
                UUID().uuidString
            )
        }

        print(result.count)
    }

    func cleanFunction() {

        let names = [
            "Alex",
            "John",
            "David"
        ]

        for name in names {

            print(name)
        }
    }

    private func updateUI(
        _ value: String
    ) {

        print(value)
    }

    private func showTitle() {

        print("Updated")
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