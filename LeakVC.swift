import UIKit

class LeakVC: UIViewController {

    var completions: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        completions = {
            self.dismiss(animated: true)
        }
    }
}