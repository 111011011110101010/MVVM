import UIKit

final class DetailViewController: UIViewController {
    
    let viewModel: DetailViewModel?
    
    let idLabel = UILabel()
    let nameLabel = UILabel()
    let usernameLabel = UILabel()
    let emailLabel = UILabel()
    let addressLabel = UILabel()
    let phoneLabel = UILabel()
    let streetLabel = UILabel()
    let suiteLabel = UILabel()
    let cityLabel = UILabel()
    var stackView = UIStackView()
    var photoPerson = UIImageView(frame: .zero)
    
    init(viewModel: DetailViewModel?) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupInformation()
    }
}
