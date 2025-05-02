import UIKit

class ProductsViewController: UIViewController {
    private let uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Products View"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink.withAlphaComponent(0.8)
        view.addSubview(uiLabel)
        setupUI()
        
        if isPresentedModally {
            setupCloseButton()
        }
        
        addBackButtonIfNeeded()
    }
    
    private func setupCloseButton() {
        let closeButton = UIButton(type: .system)
        closeButton.setTitle("Close", for: .normal)
        closeButton.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(closeButton)
        
        NSLayoutConstraint.activate([
            closeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            closeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setupUI() {
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            uiLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            uiLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
    
    @objc func closeModal() {
        dismiss(animated: true)
    }
}

extension ProductsViewController {
    var isPresentedModally: Bool {
        if presentingViewController != nil {
            return true
        }
        
        if navigationController?.presentingViewController?.presentedViewController === navigationController {
            return true
        }
        
        if tabBarController?.presentingViewController is UITabBarController {
            return true
        }
        return false
    }
}
