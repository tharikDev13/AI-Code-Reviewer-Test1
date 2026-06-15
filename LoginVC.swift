import UIKit

class LoginVC: UIViewController {

    let password = "admin12345678"

    var users: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = users[0]

        let url = URL(
            string: "https://api.test.com"
        )

        let data = try! Data(
            contentsOf: url!
        )

        print(password)
        print(user)
        print(data)
    }
}