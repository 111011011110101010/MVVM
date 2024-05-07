import UIKit

extension URLSession {
    
    typealias Handler = (Data?, URLResponse?, Error?) -> Void
    
    @discardableResult
    func request(_ endPoint: EndPoint, _ handler: @escaping Handler) -> URLSessionDataTask {
        
        let task = dataTask(with: endPoint.url, completionHandler: handler)
        task.resume()
        
        return task
    }
}
