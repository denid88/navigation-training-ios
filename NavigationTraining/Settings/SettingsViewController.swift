import UIKit

class SettingsViewController: UIViewController {
    private lazy var pushViewControllerButton: UIButton = self.createUIButton("Push View Controlller")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple.withAlphaComponent(0.1)
        view.addSubview(pushViewControllerButton)
        setupUI()
    }
}

extension SettingsViewController {
    private func createUIButton(_ title: String) -> UIButton {
        let uiButton = UIButton()
        uiButton.configuration = .filled()
        uiButton.configuration?.title = title
        uiButton.configuration?.baseForegroundColor = .white
        uiButton.configuration?.baseBackgroundColor = .black
        return uiButton
    }
    
    private func setupUI() {
        pushViewControllerButton.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 40.0
        
        NSLayoutConstraint.activate([
            pushViewControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushViewControllerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pushViewControllerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            pushViewControllerButton.heightAnchor.constraint(equalToConstant: 50.0),
        ])
        
        pushViewControllerButton.addTarget(self, action: #selector(movePushView), for: .touchUpInside)
    }
    
    @objc func movePushView() {
        let productsVC = ProductsViewController()
        productsVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(productsVC, animated: true)
    }
}
