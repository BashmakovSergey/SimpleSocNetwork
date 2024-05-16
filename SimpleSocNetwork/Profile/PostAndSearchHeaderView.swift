import UIKit

final class PostAndSearchHeaderView: UITableViewHeaderFooterView {
    
    static var identifier = "PostAndSearchHeaderView"
    
    public lazy var postLabel: CustomLabel = {
        let label = CustomLabel(labelText: "My notes", fontsize: 18, fontColor: .textMainBlack, alignment: .left)
        return label
    }()
    
    public lazy var searchButton: UIButton = {
        let button = CustomButton(titleText: "", titleSize: 0, titleColor: .textMainBlack, backgroundColor: .clear, tapAction: nil)
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.imageView?.tintColor = .systemOrange
        return button
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        contentView.backgroundColor = .backgroundMainGray
        contentView.addSubviews(postLabel, searchButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            postLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            postLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            postLabel.heightAnchor.constraint(equalToConstant: 20),
            postLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            searchButton.centerYAnchor.constraint(equalTo: postLabel.centerYAnchor),
            searchButton.heightAnchor.constraint(equalToConstant: 20),
            searchButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
        ])
    }
    
}
