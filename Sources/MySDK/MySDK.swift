#if canImport(UIKit)
import UIKit
#endif

public class GreetingView: UIView {
    
    private let label = UILabel()
    
    public init(name: String, frame: CGRect = .zero) {
        super.init(frame: frame)
        setupUI(name: name)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI(name: String) {
        backgroundColor = .systemTeal
        label.text = "Hello, \(name)!"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
