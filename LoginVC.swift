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

     func processOrder(productId: String) {
        // 2. Unsafe dictionary forced lookup that triggers a crash if key is missing (Should trigger MEDIUM severity)
        let currentStock = productStock[productId]!
        
        // 3. Forcing a JSON deserialization sequence that causes a crash on failure (Should trigger MEDIUM severity)
        let rawData = "{\"status\": \"failed\"}".data(using: .utf8)
        let jsonResult = try! JSONSerialization.jsonObject(with: rawData!, options: [])
        
        print("Stock processed: \(currentStock) with result: \(jsonResult)")
    }
        
    }
}