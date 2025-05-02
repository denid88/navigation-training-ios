import UIKit

class ProductViewController: UIViewController {
    private let uiLabel: UILabel = {
        let label = UILabel()
        label.text = "Product View"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan.withAlphaComponent(0.2)
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
