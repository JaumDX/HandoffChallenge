//
//  DetailsViewController.swift
//  Handoff
//
//  Created by Solid Jaum on 13/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var details : String? = nil
    var nome: String? = nil
    
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var detailsText: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeLabel.text = nome
        detailsText.text = details

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
