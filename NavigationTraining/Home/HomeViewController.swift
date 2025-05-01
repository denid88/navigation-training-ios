import UIKit

class HomeViewController: UIViewController {
    let productButton: UIButton = {
        let uiButton = UIButton()
        uiButton.configuration = .filled()
        uiButton.configuration?.title = "Move to Products"
        if let appleIcon = UIImage(systemName: "applelogo") {
            uiButton.configuration?.image = appleIcon.withRenderingMode(.alwaysTemplate)
            uiButton.configuration?.imagePadding = 12
        }
        uiButton.configuration?.baseForegroundColor = .white
        uiButton.configuration?.baseBackgroundColor = .black
        return uiButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint.withAlphaComponent(0.1)
        view.addSubview(productButton)
        
        setupUI()
    }
    
    private func setupUI() {
        productButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            productButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            productButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            productButton.widthAnchor.constraint(equalToConstant: 200.0),
            productButton.heightAnchor.constraint(equalToConstant: 50.0)
        ])
        
        productButton.addTarget(self, action: #selector(moveToProducts), for: .touchUpInside)
    }
    
    @objc func moveToProducts() {
        let productsVC = ProductsViewController()
        navigationController?.pushViewController(productsVC, animated: true)
    }
}
