import UIKit

class ThreadTestVC: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {

            self.label.text = "Done"
        }
    }
}