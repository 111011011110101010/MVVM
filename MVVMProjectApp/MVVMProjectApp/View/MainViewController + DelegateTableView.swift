import UIKit

extension MainViewController: UITableViewDelegate {}

extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.getNumberOfSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowInSection(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Id")
        guard let cell else { return UITableViewCell() }
        
        cell.textLabel?.text = cellDataSource[indexPath.row].username
        cell.backgroundColor = .systemGray2.withAlphaComponent(0.7)
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 0.5)
        
        return cell
    }
    
    func reloadTableView() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
}
