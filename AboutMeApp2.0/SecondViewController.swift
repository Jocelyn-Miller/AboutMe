//
//  SecondViewController.swift
//  AboutMeApp2.0
//
//  Created by Jocelyn Miller on 9/1/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet weak var familyImage: UIImageView!
    var familyCounter = 1
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var familyLabel: UILabel!
    var backgroundCLR = UIColor()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        familyImage.image = UIImage.init(named: "family1")
         view.backgroundColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        familyLabel.textColor =  backgroundCLR
        familyLabel.text = "I live with my mom, dad, and two sisters"
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func familyButton(_ sender: UIButton)
    {
        familyCounter = familyCounter + 1
        if familyCounter >= 4
        {
            familyCounter = 1
            familyLabel.text = "I live with my mom, dad, and two sisters"
           
        }
        
        familyImage.image = UIImage.init(named: "family\(familyCounter)")
        if familyCounter == 2
               {
                   familyLabel.text = "My older sister goes to penn state"
                   
                   
               }
               else if familyCounter == 3
               {
                   familyLabel.text = "My dad is bald"
                   
               }
        sender.titleLabel?.textColor = backgroundCLR
    }
    
    @IBAction func colorSlider(_ sender: UISlider)
    {
        if slider.value <= 0.35
        {
        view.backgroundColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1))
            backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        }
        else if slider.value <= 0.7
        {
        view.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 0.9807458418, green: 0.7584811284, blue: 1, alpha: 1))
            backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.9807458418, green: 0.7584811284, blue: 1, alpha: 1) )

        }
        else if slider.value <= 1
        {
        view.backgroundColor = UIColor.init(cgColor: #colorLiteral(red: 0.774899606, green: 1, blue: 0.6673803241, alpha: 1))
            backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.774899606, green: 1, blue: 0.6673803241, alpha: 1) )
        }
        familyLabel.textColor = backgroundCLR
    }
    
}

