import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {

            self.view.backgroundColor = .yellow
        }
    }
}