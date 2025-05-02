import UIKit

class SettingsViewController: UIViewController {
    private lazy var pushViewControllerButton: UIButton = self.createUIButton("Push View Controlller")
    private lazy var pushTwoViewsControllerButton: UIButton = self.createUIButton("Push Two View Controlller")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple.withAlphaComponent(0.1)
        view.addSubview(pushViewControllerButton)
        view.addSubview(pushTwoViewsControllerButton)
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
        pushTwoViewsControllerButton.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 40.0
        
        NSLayoutConstraint.activate([
            pushViewControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushViewControllerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pushViewControllerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            pushViewControllerButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            pushTwoViewsControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushTwoViewsControllerButton.centerYAnchor.constraint(equalTo: pushViewControllerButton.bottomAnchor, constant: padding),
            pushTwoViewsControllerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            pushTwoViewsControllerButton.heightAnchor.constraint(equalToConstant: 50.0),
        ])
        
        pushViewControllerButton.addTarget(self, action: #selector(movePushView), for: .touchUpInside)
        pushTwoViewsControllerButton.addTarget(self, action: #selector(movePushTwoViews), for: .touchUpInside)
    }
    
    @objc func movePushView() {
        let productsVC = ProductsViewController()
        productsVC.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(productsVC, animated: true)
    }
    
    @objc func movePushTwoViews() {
        let productsVC = ProductsViewController()
        let productVC = ProductViewController()
        productsVC.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([self, productsVC, productVC], animated: true)
        
//        navigationController?.pushViewController(productsVC, animated: true)
//
//        // Second transition
//        DispatchQueue.main.async {
//            self.navigationController?.pushViewController(productVC, animated: true)
//        }

    }
}
