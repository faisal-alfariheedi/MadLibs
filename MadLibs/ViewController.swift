//
//  ViewController.swift
//  MadLibs
//
//  Created by faisal on 01/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var som: UILabel!
    var text="..."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        som.text=text
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! newinput
        des.dad=self
        
    }


}

//extension ViewController:sender{
//    func send(adj: String, ve1: String, ve2: String, nou: String) {
//        text="We are having a perfectly \(adj) right now. Later we will \(ve1) and \(ve2) in the \(nou)"
//        som.text=text
//
////        label doesn`t change don`t know why
//        print(ve1)
//
//    }
//}
