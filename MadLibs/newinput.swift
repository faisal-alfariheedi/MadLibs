//
//  newinput.swift
//  MadLibs
//
//  Created by faisal on 01/05/1443 AH.
//

import UIKit

protocol sender:class {
    func send(adj:String,ve1:String,ve2:String,nou:String)
}

class newinput: UIViewController {
    @IBOutlet weak var adj: UITextField!
    @IBOutlet weak var ver1: UITextField!
    @IBOutlet weak var ver2: UITextField!
    @IBOutlet weak var nou: UITextField!
    weak var sen:sender?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitt(_ sender: UIButton) {
        if(adj.text!.isEmpty&&ver1.text!.isEmpty&&ver2.text!.isEmpty&&nou.text!.isEmpty){}
        else{
            sen?.send(adj: String(adj.text!),
                      ve1: String(ver1.text!),
                      ve2: String(ver2.text!),
                      nou: String(nou.text!))
            print(String(adj.text!))
            
            
        dismiss(animated: true, completion: nil)
        }
    }
    
    
   

}
