//
//  PhotoViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 04.04.2021.
//

import UIKit

class PhotoViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var photoTwoImageView: UIImageView!
    @IBOutlet var photoThreeImageView: UIImageView!
    @IBOutlet var photoFourImageView: UIImageView!
    @IBOutlet var photoFiveImageView: UIImageView!
    
    // MARK: - Public Properties
    var photoTwo: String!
    var photoThree: String!
    var photoFour: String!
    var photoFive: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoTwoImageView.layer.cornerRadius = 20
        photoThreeImageView.layer.cornerRadius = 20
        photoFourImageView.layer.cornerRadius = 20
        photoFiveImageView.layer.cornerRadius = 20

        if let photoTwo = photoTwo,
           let photoThree = photoThree,
           let photoFour = photoFour,
           let photoFive = photoFive {
            photoTwoImageView.image = UIImage(named: photoTwo)
            photoThreeImageView.image = UIImage(named: photoThree)
            photoFourImageView.image = UIImage(named: photoFour)
            photoFiveImageView.image = UIImage(named: photoFive)
        }
        
    }

}
