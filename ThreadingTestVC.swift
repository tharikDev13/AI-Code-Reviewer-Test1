import UIKit

class ThreadingTestVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        DispatchQueue.global().async {

            self.view.backgroundColor = .green
        }
    }
}