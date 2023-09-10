//
//  ViewController.swift
//  navDatos
//
//  Created by Javier Rodríguez Valentín on 16/09/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var insertName: UITextField!
    @IBOutlet weak var insertPassword: UITextField!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func buttonLogin(_ sender: Any) {
    
        //ejecutar segue con id sgLogin
        performSegue(withIdentifier: "sgLogin", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("EL segue elegido es: \(segue.identifier!)") //segue .identifier es un opcional por eso hay ponerle el signo de exclamación
        
        if let destiny = segue.destination as? profileViewController{
            destiny.transfer = [insertName.text, insertPassword.text]
           
        }
    }
    
}

