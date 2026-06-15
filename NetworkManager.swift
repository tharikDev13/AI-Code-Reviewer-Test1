import Foundation

class NetworkManager {

    func loadData() {

        let url = URL(
            string: "https://api.test.com"
        )!

        let data = try! Data(
            contentsOf: url
        )

        print(data)
    }
}