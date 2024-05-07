import UIKit

final class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchUsers(_ response: @escaping ([Users]?, NetworkError?) -> Void) {
        
        NetworkRequest.shared.getData { result in
            
            switch result {
    
            case .success(let data):
                do {
                    let users = try JSONDecoder().decode([Users].self, from: data)
                    response(users, nil)
                } catch let jsonError {
                    print("Failed to Decode", jsonError)
                }
                
            case .failure(_):
                response(nil, .canNotParseData)
            }
        }
    }
}
