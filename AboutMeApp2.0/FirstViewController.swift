//
//  FirstViewController.swift
//  AboutMeApp2.0
//
//  Created by Jocelyn Miller on 9/1/20.
//  Copyright © 2020 Jocelyn Miller. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController
{
    @IBOutlet weak var meImage: UIImageView!
    var meCounter = 1
    @IBOutlet weak var meLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var meButtonOutlet: UIButton!
    @IBOutlet weak var pressButtonOutlet: UIButton!
    @IBOutlet weak var pressLabel: UILabel!
    
    @IBOutlet weak var learnMeLabel: UILabel!
    var backgroundCLR = UIColor()
    

    
    var phrase1 = "My Name is Jocelyn!"
    var phrase2 = "I like hanging out with my friends"
    var phrase3 = "This summer I found out I'm allergic to spiders"
    //text color change, slider color changer, hello button, changing facts, pet particle (uncompleted), tab bar controller icon
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        meImage.image = UIImage.init(named: "me1")
        view.backgroundColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        meLabel.textColor = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
        pressLabel.textColor = #colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1)
        learnMeLabel.textColor = #colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1)
    }



    
    @IBAction func helloButton(_ sender: UIButton)
    {
         let text: String = nameText.text!
        helloLabel.text = "Hello \(text)!"
       
        
        
    }
    
    @IBAction func meButton(_ sender: UIButton)
    {
        meCounter = meCounter + 1
                     if meCounter >= 4
                     {
                         meCounter = 1
                         meLabel.text = phrase1
                         backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.698523762, green: 0.8135157036, blue: 1, alpha: 1) )
                     }
               
                     if meCounter == 2
                     {
                         meLabel.text = phrase2
                         backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.9807458418, green: 0.7584811284, blue: 1, alpha: 1) )
                     }
                     else if meCounter == 3
                     {
                         meLabel.text = phrase3
                         backgroundCLR = UIColor.init(cgColor:#colorLiteral(red: 0.774899606, green: 1, blue: 0.6673803241, alpha: 1) )
                     }
        
        meImage.image = UIImage.init(named: "me\(meCounter)")
        meLabel.textColor = backgroundCLR
     
        pressLabel.textColor = backgroundCLR
        learnMeLabel.textColor = backgroundCLR
        view.backgroundColor = backgroundCLR
                    
                    }
    
    
}

