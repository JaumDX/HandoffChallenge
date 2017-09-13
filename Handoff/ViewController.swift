//
//  ViewController.swift
//  Handoff
//
//  Created by Solid Jaum on 12/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let hapticTypes = HapticTypes()
    @IBOutlet weak var typesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for tap in hapticTypes.haptic{
            
            print(tap.keys.first!)
            print(tap[tap.keys.first!]!)
            print("\n\n")
            
            
        }
        typesTableView.delegate = self
        typesTableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return hapticTypes.haptic.count
    }
    
    
    @available(iOS 2.0, *)
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        
        let cell = typesTableView.dequeueReusableCell(withIdentifier: "TypesCell", for: indexPath)
       
        cell.textLabel?.text = hapticTypes.haptic[indexPath.row].keys.first!
        
        
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let hapticType = hapticTypes.haptic[indexPath.row].keys.first!
        let hapticDescription = hapticTypes.haptic[indexPath.row].values.first!
        
        print(hapticType)
        print(hapticDescription)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailsView") as!DetailsViewController
        
        vc.nome = hapticType
        vc.details = hapticDescription
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

