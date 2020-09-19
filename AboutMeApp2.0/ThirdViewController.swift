//
//  ThirdViewController.swift
//  AboutMeApp2.0
//
//  Created by Jocelyn Miller on 9/1/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController
{


    @IBOutlet weak var petImage: UIImageView!
    var petCounter = 1
    var backgroundCLR = UIColor()
    var imageIsVisible = true
    @IBOutlet weak var petLabel: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        petImage.image = UIImage.init(named: "pet1")
        
         backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        
        petLabel.text = "I have a cat named ruby"
        petLabel.textColor = backgroundCLR
        // Do any additional setup after loading the view.
    }
    

    @IBAction func petButton(_ sender: UIButton)
    {
 
        
        petCounter = petCounter + 1
        if petCounter >= 4
        {
            petCounter = 1
            //petLabel.text = phrase1
            view.backgroundColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
             petLabel.text = "I have a cat named ruby"
            
        }
        petImage.image = UIImage.init(named: "pet\(petCounter)")
        
        if petCounter == 2
               {
                   petLabel.text = "I have a bulldog named Rooney"
                   
               }
               else if petCounter == 3
               {
                   petLabel.text = "both my pets hate baths"
                   
               }
        petLabel.textColor = backgroundCLR
        view.backgroundColor = backgroundCLR

    }

    
    @IBAction func ImageAppear(_ sender: UISwitch)
        
    {
        imageIsVisible = !imageIsVisible
        if imageIsVisible == false
        {
            petImage.isHidden = true
        }
        else
        {
            petImage.isHidden = false
        }
    }
    
}
