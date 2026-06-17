import UIKit

final class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(
            string: "https://api.test.com"
        )!

        let data = try! Data(
            contentsOf: url
        )

        print(data)
    }
}