import UIKit
class LoginVC: UIViewController2 {
    

    let password = "admin1234567890"

class ThreadTestVC: UIViewController {

    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {

            self.label.text = "Done"
        }
    }
}