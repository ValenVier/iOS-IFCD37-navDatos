//
//  profileViewController.swift
//  navDatos
//
//  Created by Javier Rodríguez Valentín on 16/09/2021.
//

import UIKit

class profileViewController: UIViewController {
   
    var transfer:[String?] = []
    //var nameTr:String?
    //var passTr:String?
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPassword: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let trName = transfer[0]{
            //print("Lo que mandas es: \(trName)")
            labelName.text = "  Nombre: \(trName)"
        }
        
        if let trPass = transfer[1]{
            //print("Lo que mandas es: \(trPass)")
            labelPassword.text = "  Contraseña: \(trPass)"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
