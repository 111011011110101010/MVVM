import UIKit

extension DetailViewController {
    
    func setupUI() {
        
        title = "Information"
        self.view.backgroundColor = .systemGray2
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemGray5.withAlphaComponent(0.9)]
        
        stackView = UIStackView(arrangedSubviews: [idLabel, nameLabel, usernameLabel, emailLabel, addressLabel, phoneLabel, streetLabel, suiteLabel, cityLabel])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
                
        self.idLabel.font = .systemFont(ofSize: 15)
        self.nameLabel.font = .systemFont(ofSize: 15)
        self.usernameLabel.font = .systemFont(ofSize: 15)
        self.emailLabel.font = .systemFont(ofSize: 15)
        self.phoneLabel.font = .systemFont(ofSize: 15)
        self.streetLabel.font = .systemFont(ofSize: 15)
        self.suiteLabel.font = .systemFont(ofSize: 15)
        self.cityLabel.font = .systemFont(ofSize: 15)
        
        photoPerson = UIImageView(image: UIImage(named: "ghost"))
        photoPerson.translatesAutoresizingMaskIntoConstraints = false
        photoPerson.contentMode = .scaleAspectFill
        photoPerson.layer.cornerRadius = 20
        photoPerson.layer.borderWidth = 2
        photoPerson.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 0.5)
        photoPerson.clipsToBounds = true
   
        navigationController?.navigationBar.tintColor = UIColor.systemGray5

        
        self.view.addSubview(stackView)
        self.view.addSubview(photoPerson)
        
        stackView.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        
        photoPerson.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        photoPerson.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 450).isActive = true
        photoPerson.widthAnchor.constraint(equalToConstant: 300).isActive = true
        photoPerson.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    func setupInformation() {
        
        guard let viewModel else { return }
        
        self.idLabel.text = "Id: \(viewModel.id)"
        self.nameLabel.text = "Name: \(viewModel.name)"
        self.usernameLabel.text = "Username: \(viewModel.username)"
        self.emailLabel.text = "Email: \(viewModel.email)"
        self.phoneLabel.text = "Phone: \(viewModel.phone)"
        self.streetLabel.text = "Street: \(viewModel.street)"
        self.suiteLabel.text = "Suite: \(viewModel.suite)"
        self.cityLabel.text = "City: \(viewModel.city)"
    }
}
