import UIKit

final class CheckoutVC: UIViewController {

    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {

            let url = URL(
                string: "https://jsonplaceholder.typicode.com/posts"
            )!

            let data = try! Data(
                contentsOf: url
            )

            let json = try! JSONSerialization.jsonObject(
                with: data
            )

            self.label.text = "\(json)"
        }
    }
}