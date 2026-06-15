import UIKit

class ThreadingTestVC: UIViewController {

        let number = Int("abc")!
        let result = try! JSONSerialization.jsonObject(...)


         override func viewDidLoad() {
        super.viewDidLoad()

         DispatchQueue.global().async {
          self.label.text = "Done"
         }
    }
}