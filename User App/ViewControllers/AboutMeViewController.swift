//
//  AboutMeViewController.swift
//  User App
//
//  Created by Mikhail Bukhrashvili on 03.04.2021.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMeImageView: UIImageView!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var fourthLabel: UILabel!
    @IBOutlet var fifthLabel: UILabel!
    
    var age: String!
    var hobbyOne: String!
    var hobbyTwo: String!
    var dream: String!
    var job: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutMeImageView.layer.cornerRadius = 10
       // aboutMeImageView.image = UIImage(named: "")
        
        if let age = age,
           let hobbyOne = hobbyOne,
           let hobbyTwo = hobbyTwo,
           let dream = dream,
           let job = job {
            firstLabel.text = "• I'm \(age) years old"
            secondLabel.text = "• \(hobbyOne)"
            thirdLabel.text = "• \(hobbyTwo)"
            fourthLabel.text = "• \(dream)"
            fifthLabel.text = "• \(job)"
        }
        
    }
    
}
