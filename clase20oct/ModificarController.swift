//
//  ModificarController.swift
//  clase20oct
//
//  Created by Alumno on 10/20/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ModificarController : UIViewController {
    var texto : String?
    //Quiero una funcion que reciba de parametro un String y esa funcion regrese un Void
    var callbackActualizar : ((String) -> Void)?
    
    @IBOutlet weak var txtTexto: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if texto != nil {
            txtTexto.text = texto
        }
    }
    @IBAction func doTapActualizar(_ sender: Any) {
        if callbackActualizar != nil {
            callbackActualizar!(txtTexto.text!)
        }
    }
    
}
