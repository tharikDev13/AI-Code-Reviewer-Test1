import UIKit

final class ProfileVC: UIViewController {

    var completion: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        completion = {
            self.dismiss(animated: true)
        }
    }
}