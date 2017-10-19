//
//  ViewController.swift
//  2less2
//
//  Created by Kirill Lukyanov on 17.10.17.
//  Copyright © 2017 Kirill Lukyanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "root"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goGrayController(_ sender: Any) {
        
        print("go")
    }

    @IBAction func goGrayControllerLogic(_ sender: Any) {
        
        performSegue(withIdentifier: "go1", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        if segue.identifier == "go1" {
            let destinationViewController = segue.destination as! ViewController2
            destinationViewController.text = "Hello"
        }
    }
    
}

print("Смотри какой тег")

