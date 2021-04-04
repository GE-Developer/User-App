//
//  AboutMeViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 03.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var photoOneImageView: UIImageView!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var fourthLabel: UILabel!
    @IBOutlet var fifthLabel: UILabel!
    
    // MARK: - Public Properties
    var age: String!
    var hobbyOne: String!
    var hobbyTwo: String!
    var dream: String!
    var job: String!
    var photoOne: String!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoOneImageView.layer.cornerRadius = photoOneImageView.frame.size.width / 2
        
        if let age = age,
           let hobbyOne = hobbyOne,
           let hobbyTwo = hobbyTwo,
           let dream = dream,
           let job = job,
           let photoOne = photoOne {
            firstLabel.text = "• I'm \(age) years old"
            secondLabel.text = "• \(hobbyOne)"
            thirdLabel.text = "• \(hobbyTwo)"
            fourthLabel.text = "• \(dream)"
            fifthLabel.text = "• \(job)"
            photoOneImageView.image = UIImage(named: photoOne)
        }
        
    }

}
