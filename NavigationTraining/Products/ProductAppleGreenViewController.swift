import UIKit

class ProductAppleGreenViewController: UIViewController, AppleProtocol {
    private lazy var pushWithoutTwoViewsControllerButton: UIButton = self.createUIButton("Set without products, product")
    
    private let uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Apple Green View"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(uiLabel)
        view.addSubview(pushWithoutTwoViewsControllerButton)
        setupUI()
    }
    
    private func setupUI() {
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        pushWithoutTwoViewsControllerButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            uiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            uiLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            
            pushWithoutTwoViewsControllerButton.topAnchor.constraint(equalTo: uiLabel.bottomAnchor, constant: 20.0),
            pushWithoutTwoViewsControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushWithoutTwoViewsControllerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            pushWithoutTwoViewsControllerButton.heightAnchor.constraint(equalToConstant: 50.0),
            
        ])
        
        pushWithoutTwoViewsControllerButton.addTarget(self, action: #selector(moveWithoutTwoView), for: .touchUpInside)
    }
    
    @objc private func moveWithoutTwoView() {
        let views = navigationController?.viewControllers ?? [self]

        let filteredViewControllers = views.filter { viewController in
            return viewController is SettingsViewController || viewController is AppleProtocol
        }
        
        navigationController?.setViewControllers(filteredViewControllers, animated: true)
    }
}
