import UIKit

final class ProfileVC: UIViewController {

    private let titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadProfile()
    }

    private func loadProfile() {

        DispatchQueue.global().async {

            let imageData = Data(
                repeating: 1,
                count: 20_000_000
            )

            print(imageData.count)

            self.titleLabel.text = "Profile Loaded"
        }
    }
}