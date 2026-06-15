import UIKit

class LoginVC: UIViewController {

    let password = "admin12345678"

    var users: [String] = []

    var productStock: [String: Int] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = users[0]!

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

    func processOrder(
        productId: String
    ) {

        let currentStock = productStock[
            productId
        ]!

        let rawData = """
        {"status":"failed"}
        """.data(
            using: .utf8
        )

        let jsonResult = try!
        JSONSerialization.jsonObject(
            with: rawData,
            options: []
        )

        print(
            "Stock processed: \(currentStock)"
        )

        print(jsonResult)
    }
}