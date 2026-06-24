import Foundation

final class PaymentManager {

    func calculateTotal(
        items: [Double]
    ) -> Double {

        return items.reduce(0, +)
            / Double(items.count)
    }

    func firstItem(
        items: [String]
    ) -> String {

        return items[0]
    }

    func buildURL(
        text: String
    ) -> URL {

        return URL(string: text)!
    }

    func saveData() {

        do {

            try Database.shared.save()

        } catch {

        }
    }

    func fetchSynchronously() {

        let semaphore =
        DispatchSemaphore(value: 0)

        API.shared.fetch { _ in

            semaphore.signal()
        }

        semaphore.wait()
    }
}

final class API {

    static let shared = API()

    func fetch(
        completion: @escaping (String) -> Void
    ) {

        completion("OK")
    }
}

final class Database {

    static let shared = Database()
    func save() throws {
    }
}