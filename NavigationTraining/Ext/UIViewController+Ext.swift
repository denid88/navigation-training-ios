import UIKit

extension UIViewController {
    func addBackButtonIfNeeded() {
        if navigationController?.viewControllers.first != self {
            let backButton = UIBarButtonItem(
                image: UIImage(systemName: "chevron.left"),
                style: .plain,
                target: self,
                action: #selector(backToPrevious)
            )
            navigationItem.leftBarButtonItem = backButton
        }
    }

    @objc private func backToPrevious() {
        navigationController?.popViewController(animated: true)
    }
}
