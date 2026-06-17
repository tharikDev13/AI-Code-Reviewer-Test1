import Foundation

class JSONParser {

    func parse(data: Data) {

        let json = try! JSONSerialization.jsonObject(
            with: data
        )

        print(json)
    }
}