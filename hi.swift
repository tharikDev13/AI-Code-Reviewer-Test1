final class UserStore {

    private var users: [String] = []

    func add(user: String) {

        DispatchQueue.global().async {
            self.users.append(user)
        }
    }

    func allUsers() -> [String] {
        return users
    }
}