import UIKit

final class MainCellViewModel {
    let name: String
    let email: String
    
    init(_ user: Users) {
        self.name = user.name
        self.email = user.email
    }
}
