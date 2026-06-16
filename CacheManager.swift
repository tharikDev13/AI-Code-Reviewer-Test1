import Foundation

class CacheManager {

    var cache: [String: String] = [:]

    func getToken() {

        let token =
        cache["auth_token"]!

        print(token)
    }
}