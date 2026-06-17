import Foundation

final class RaceCondition {

    var counter = 0

    func start() {

        for _ in 0..<1000 {

            DispatchQueue.global().async {

                self.counter += 1
            }
        }
    }
}