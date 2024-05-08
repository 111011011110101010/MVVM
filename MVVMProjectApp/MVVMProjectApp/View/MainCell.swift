import UIKit

final class MainCell: UITableViewCell {
    
    static var identifier: String {
        "MainCell"
    }
    
    private let nameLabel = UILabel()
    private let emailLabel = UILabel()
    private var stackLabel = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainCell {
    
    func setupView() {
        
        backgroundColor = .systemGray4.withAlphaComponent(0.55)
        
        nameLabel.font = .systemFont(ofSize: 16)
        emailLabel.font = .systemFont(ofSize: 14)
        emailLabel.textColor = .black.withAlphaComponent(0.7)
        
        stackLabel = UIStackView(arrangedSubviews: [nameLabel, emailLabel])
        stackLabel.axis = .vertical
        stackLabel.spacing = 3
        stackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(stackLabel)
        
        stackLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
    }
    
    func setupCell(_ viewModel: MainCellViewModel) {
        self.nameLabel.text = viewModel.name
        self.emailLabel.text = viewModel.email
    }
}
