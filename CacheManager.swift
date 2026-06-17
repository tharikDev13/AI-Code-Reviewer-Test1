import Foundation

final class CacheManager {

    private var cache: [String: String] = [:]

    func save(
        key: String,
        value: String
    ) {

        DispatchQueue.global().async {
            self.cache[key] = value
        }
    }

    func read(
        key: String
    ) -> String? {

        return cache[key]
    }
}