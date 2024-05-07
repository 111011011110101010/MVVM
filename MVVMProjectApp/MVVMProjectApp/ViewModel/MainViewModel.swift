import UIKit

final class MainViewModel {
    
    var isLoading: Observable<Bool> = Observable(false)
    var dataSource: [Users]?
    var cellDataSource: Observable<[Users]> = Observable(nil)
    
    func getNumberOfSection() -> Int {
        return 1
    }
    
    func numberOfRowInSection(_ section: Int) -> Int {
        dataSource?.count ?? 0
    }
    
    func getUsers() {
        isLoading.value = true
        NetworkDataFetch.shared.fetchUsers { [weak self] users, error in
            
                self?.isLoading.value = false
            
            if let users {
                self?.dataSource = users
                self?.mapCellData()
            }
        }
    }
    
    func mapCellData() {
        cellDataSource.value = dataSource
    }
}
