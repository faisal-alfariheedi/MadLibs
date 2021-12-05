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
    var dad:UIViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitt(_ sender: UIButton) {
        if(adj.text!.isEmpty&&ver1.text!.isEmpty&&ver2.text!.isEmpty&&nou.text!.isEmpty){}
        else{
//            sen?.send(adj: String(adj.text!),
//                      ve1: String(ver1.text!),
//                      ve2: String(ver2.text!),
//                      nou: String(nou.text!))
//            print(String(adj.text!)) deleget didn``t work
            (dad as! ViewController).som.text="We are having a perfectly \(String(adj.text!)) right now. Later we will \(String(ver1.text!)) and \(String(ver2.text!)) in the \(String(nou.text!))"
            
        dismiss(animated: true, completion: nil)
        }
    }
    
    
   

}
