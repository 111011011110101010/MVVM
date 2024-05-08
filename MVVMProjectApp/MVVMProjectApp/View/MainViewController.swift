import UIKit

final class MainViewController: UIViewController {
    
    let viewModel = MainViewModel()
    var cellDataSource: [MainCellViewModel] = []
    
    let baseBackground: UIImageView = {
        let baseBackground = UIImageView(image: UIImage(named: "mainSceneBackground"))
        baseBackground.frame = CGRect(x: .zero, y: .zero, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        baseBackground.contentMode = .scaleAspectFill
        
        return baseBackground
    }()
    
    let labelDeveloped: UILabel = {
        let label = UILabel(frame: .zero)
        label.text = "Developed by Zaharchenko"
        label.textColor = .systemGray5.withAlphaComponent(0.85)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 15, weight: .light)
        
        return label
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()
    
    let activityIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        
        return indicator
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configurationView()
        bindViewModel()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getUsers()
    }
}


