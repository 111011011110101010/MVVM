import UIKit

final class MainViewController: UIViewController {
    
    let viewModel = MainViewModel()
    
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
        
        return label
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configurationView()
    }
}


