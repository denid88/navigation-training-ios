import UIKit

class ProductAppleViewController: UIViewController, AppleProtocol {
    private let uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Product Apple View"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(uiLabel)
        setupUI()
    }
    
    private func setupUI() {
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            uiLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            uiLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
}
