import UIKit

class HomeViewController: UIViewController {
    private lazy var modalFullScreenButton: UIButton = self.createUIButton("Modal Full Screen")
    private lazy var modalPageSheetButton: UIButton = self.createUIButton("Modal Page Sheet")
    private lazy var modalFormSheetButton: UIButton = self.createUIButton("Modal Form Sheet")
    private lazy var modalCurrentContextButton: UIButton = self.createUIButton("Modal CurrentContext")
    private lazy var modalOverFullScreenButton: UIButton = self.createUIButton("Modal Over Full Screen")
    private lazy var modalPopoverButton: UIButton = self.createUIButton("Modal Popover")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        view.addSubview(modalFullScreenButton)
        view.addSubview(modalPageSheetButton)
        view.addSubview(modalFormSheetButton)
        view.addSubview(modalCurrentContextButton)
        view.addSubview(modalOverFullScreenButton)
        view.addSubview(modalPopoverButton)
        
        setupUI()
    }
}

extension HomeViewController {
    private func setupUI() {
        modalFullScreenButton.translatesAutoresizingMaskIntoConstraints = false
        modalPageSheetButton.translatesAutoresizingMaskIntoConstraints = false
        modalFormSheetButton.translatesAutoresizingMaskIntoConstraints = false
        modalCurrentContextButton.translatesAutoresizingMaskIntoConstraints = false
        modalOverFullScreenButton.translatesAutoresizingMaskIntoConstraints = false
        modalPopoverButton.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 40.0
        
        NSLayoutConstraint.activate([
            modalPageSheetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalPageSheetButton.centerYAnchor.constraint(equalTo: modalFullScreenButton.topAnchor, constant: -padding),
            modalPageSheetButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalPageSheetButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            modalFormSheetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalFormSheetButton.centerYAnchor.constraint(equalTo: modalPageSheetButton.topAnchor, constant: -padding),
            modalFormSheetButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalFormSheetButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            modalFullScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalFullScreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            modalFullScreenButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalFullScreenButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            modalCurrentContextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalCurrentContextButton.centerYAnchor.constraint(equalTo: modalFullScreenButton.bottomAnchor, constant: padding),
            modalCurrentContextButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalCurrentContextButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            modalOverFullScreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalOverFullScreenButton.centerYAnchor.constraint(equalTo: modalCurrentContextButton.bottomAnchor, constant: padding),
            modalOverFullScreenButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalOverFullScreenButton.heightAnchor.constraint(equalToConstant: 50.0),
            
            modalPopoverButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalPopoverButton.centerYAnchor.constraint(equalTo: modalOverFullScreenButton.bottomAnchor, constant: padding),
            modalPopoverButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            modalPopoverButton.heightAnchor.constraint(equalToConstant: 50.0),
            
        ])
        
        
        modalFullScreenButton.addTarget(self, action: #selector(moveModalFullScreen), for: .touchUpInside)
        modalPageSheetButton.addTarget(self, action: #selector(moveModalPageSheet), for: .touchUpInside)
        modalFormSheetButton.addTarget(self, action: #selector(moveModalFormSheet), for: .touchUpInside)
        modalCurrentContextButton.addTarget(self, action: #selector(moveCurrentContextSheet), for: .touchUpInside)
        modalOverFullScreenButton.addTarget(self, action: #selector(moveOverFullScreenSheet), for: .touchUpInside)
        modalPopoverButton.addTarget(self, action: #selector(movePopoverSheet), for: .touchUpInside)
    }
    
    @objc func moveModalFullScreen() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .fullScreen
        present(productsVC, animated: true)
    }
    
    @objc func moveModalPageSheet() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .pageSheet
        present(productsVC, animated: true)
    }
    
    @objc func moveModalFormSheet() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .formSheet
        present(productsVC, animated: true)
    }
    
    @objc func moveCurrentContextSheet() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .currentContext
        present(productsVC, animated: true)
    }
    
    @objc func moveOverFullScreenSheet() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .overFullScreen
        present(productsVC, animated: true)
    }
    
    @objc func movePopoverSheet() {
        let productsVC = ProductsViewController()
        productsVC.modalPresentationStyle = .popover
        present(productsVC, animated: true)
    }
}
