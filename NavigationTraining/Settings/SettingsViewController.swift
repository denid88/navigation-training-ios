import UIKit

class SettingsViewController: UIViewController {
    private lazy var pushViewControllerButton: UIButton = self.createUIButton("Push View Controlller")
    private lazy var pushTwoViewsControllerButton: UIButton = self.createUIButton("Push Two View Controlller")
    private lazy var pushFourViewsControllerButton: UIButton = self.createUIButton("Push Four View Controlller")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(pushViewControllerButton)
        view.addSubview(pushTwoViewsControllerButton)
        view.addSubview(pushFourViewsControllerButton)
        setupUI()
    }
}

extension SettingsViewController {
    private func setupUI() {
        pushViewControllerButton.translatesAutoresizingMaskIntoConstraints = false
        pushTwoViewsControllerButton.translatesAutoresizingMaskIntoConstraints = false
        pushFourViewsControllerButton.translatesAutoresizingMaskIntoConstraints = false
        
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
            
            pushFourViewsControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushFourViewsControllerButton.centerYAnchor.constraint(equalTo: pushTwoViewsControllerButton.bottomAnchor, constant: padding),
            pushFourViewsControllerButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            pushFourViewsControllerButton.heightAnchor.constraint(equalToConstant: 50.0),
        ])
        
        pushViewControllerButton.addTarget(self, action: #selector(movePushView), for: .touchUpInside)
        pushTwoViewsControllerButton.addTarget(self, action: #selector(movePushTwoViews), for: .touchUpInside)
        pushFourViewsControllerButton.addTarget(self, action: #selector(movePushFourViews), for: .touchUpInside)
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
    }
    
    @objc func movePushFourViews() {
        let productsVC = ProductsViewController()
        let productVC = ProductViewController()
        let productAppleVC = ProductAppleViewController()
        let productAppleGreenVC = ProductAppleGreenViewController()
        
        productsVC.hidesBottomBarWhenPushed = true
        navigationController?.setViewControllers([self, productsVC, productVC, productAppleVC, productAppleGreenVC], animated: true)
    }
}
