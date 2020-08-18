//
//  ProductTableViewCell.swift
//  TechMPOC
//
//  Created by Satyananda Kumar on 29/06/20.
//  Copyright © 2020 Satyananda Kumar. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
//    var product : Product? {
//        didSet {
//            productImage.image = product?.productImage
//            productNameLabel.text = product?.productName
//            productDescriptionLabel.text = product?.productDesc
//        }
//    }
    
    
    var productNameLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        return lbl
    }()
    
    
    var productDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()
    
    var productImage : UIImageView = {
        let imgView = UIImageView()
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()
    
   
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(productImage)
        addSubview(productNameLabel)
        addSubview(productDescriptionLabel)
        
        
//        productImage.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: nil, paddingTop: 5, paddingLeft: 5, paddingBottom: 5, paddingRight: 0, width: 90, height: 0, enableInsets: false)
//        productNameLabel.anchor(top: topAnchor, left: productImage.rightAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
//        productDescriptionLabel.anchor(top: productNameLabel.bottomAnchor, left: productImage.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, width: frame.size.width / 2, height: 0, enableInsets: false)
//
//        productImage.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>)
//
//
//        let stackView = UIStackView(arrangedSubviews: [decreaseButton,productQuantity,increaseButton])
//        stackView.distribution = .equalSpacing
//        stackView.axis = .horizontal
//        stackView.spacing = 5
//        addSubview(stackView)
//        stackView.anchor(top: topAnchor, left: productNameLabel.rightAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 15, paddingLeft: 5, paddingBottom: 15, paddingRight: 10, width: 0, height: 70, enableInsets: false)
//
//        increaseButton.addTarget(self, action: #selector(increaseFunc), for: .touchUpInside)
//        decreaseButton.addTarget(self, action: #selector(decreaseFunc), for: .touchUpInside)
//
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


//{
//
//    var product:Products? {
//        didSet {
//            titleLabel.text = "Satya"
//            descriptionLabel.text = "sdglsdf jsdlfgdsglf"
//            productImage.image = UIImage(named: "placeholder")
//
//            guard let productItem = product else {return}
//            if let title = productItem.title {
//                titleLabel.text = title
//            }
//            if let desctiption = productItem.description {
//                descriptionLabel.text = desctiption
//            }
//
//            ///////TODO
//            if let imageURL = productItem.imageHref {
//                productImage.image = UIImage(named: "placeholder")
//            }
//        }
//    }
//
//    let containerView:UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.clipsToBounds = true // this will make sure its children do not go out of the boundary
//        return view
//    }()
//
//    let productImage:UIImageView = {
//        let img = UIImageView()
//        img.contentMode = .scaleAspectFill // image will never be strecthed vertially or horizontally
//        img.translatesAutoresizingMaskIntoConstraints = false // enable autolayout
//        img.layer.cornerRadius = 22
//        img.clipsToBounds = true
//        return img
//    }()
//
//    let titleLabel:UILabel = {
//        let label = UILabel()
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.textColor = .black
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//    let descriptionLabel:UILabel = {
//        let label = UILabel()
//        label.backgroundColor = UIColor.blue
//        label.font = UIFont.systemFont(ofSize: 20)
//        label.textColor =  .darkGray
//        label.numberOfLines = 2
//        //label.clipsToBounds = true
//        label.translatesAutoresizingMaskIntoConstraints = false
//        return label
//    }()
//
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        self.contentView.addSubview(productImage)
//        containerView.addSubview(titleLabel)
//        containerView.addSubview(descriptionLabel)
//        self.contentView.addSubview(containerView)
//
//        self.contentView.backgroundColor = UIColor.red
//        containerView.backgroundColor = UIColor.green
//
//        productImage.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
//
//    //productImage.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
//        productImage.leadingAnchor.constraint(equalTo:self.contentView.leadingAnchor, constant:10).isActive = true
//        productImage.widthAnchor.constraint(equalToConstant:44).isActive = true
//        productImage.heightAnchor.constraint(equalToConstant:44).isActive = true
//
//    containerView.centerYAnchor.constraint(equalTo:self.contentView.centerYAnchor).isActive = true
//        containerView.leadingAnchor.constraint(equalTo:self.productImage.trailingAnchor, constant:10).isActive = true
//        containerView.trailingAnchor.constraint(equalTo:self.contentView.trailingAnchor, constant:-10).isActive = true
//        containerView.heightAnchor.constraint(equalTo: self.contentView.heightAnchor, constant: 10).isActive = true
//
//        titleLabel.topAnchor.constraint(equalTo:self.containerView.topAnchor).isActive = true
//        titleLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
//        titleLabel.trailingAnchor.constraint(equalTo:self.containerView.trailingAnchor).isActive = true
//
//        descriptionLabel.topAnchor.constraint(equalTo:self.titleLabel.bottomAnchor).isActive = true
//      descriptionLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
//        descriptionLabel.topAnchor.constraint(equalTo:self.titleLabel.bottomAnchor).isActive = true
//      descriptionLabel.leadingAnchor.constraint(equalTo:self.containerView.leadingAnchor).isActive = true
//
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//
//        super.init(coder: aDecoder)
//    }
//
//}
