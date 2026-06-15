import UIKit

class PaymentVC: UIViewController {

    let apiKey = "sk_live_123456789"

    var users: [String] = []

    var cache: [String: String] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstUser = users[0]

        let token = cache["auth_token"]!

        let url = URL(
            string: "https://api.payment.com"
        )!

        let data = try! Data(
            contentsOf: url
        )

        print(apiKey)
        print(token)
        print(firstUser)
        print(data)
    }
}