import UIKit

extension MainViewController {
    
    func configurationView() {
        
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(baseBackground)
        self.view.addSubview(tableView)
        self.view.addSubview(labelDeveloped)
        self.view.addSubview(activityIndicator)
        self.view.backgroundColor = .systemMint
        
        tableView.delegate = self
        tableView.dataSource = self
                
        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "Scene: Main"
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.9)]
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -213),
            tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant:  -10),
            
            labelDeveloped.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            labelDeveloped.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
            
            activityIndicator.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor),
            activityIndicator.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor)
            
        ])
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Id")
        tableView.backgroundColor = .systemGray2.withAlphaComponent(0.7)
        tableView.layer.cornerRadius = 20
        tableView.layer.borderWidth = 5
        tableView.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 0.8)
    }

    func bindViewModel() {
        self.viewModel.isLoading.bind { [weak self] isLoading in
            guard let isLoading else { return }
            isLoading ? self?.activityIndicator.startAnimating() : self?.activityIndicator.stopAnimating()
        }
        
        self.viewModel.cellDataSource.bind { [weak self] users in
            
            guard let users else { return }
            self?.cellDataSource = users
            self?.reloadTableView()
        }
    }
}
