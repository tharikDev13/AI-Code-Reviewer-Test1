import UIKit

class LeakVC: UIViewController {

    var completion: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        completion = {

            self.view.backgroundColor = .red
        }
    }
}