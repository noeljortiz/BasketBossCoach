//
//  ViewControllerStart.swift
//  BasketBossCoach
//
//  Created by Noel Ortiz on 11/15/23.
//

import UIKit

class ViewControllerStart: UIViewController {

    @IBOutlet weak var pgOutlet: UITextField!
    
    var pg : String = ""
    
    @IBOutlet weak var sgOutlet: UITextField!
    
    var sg : String = ""
    
    @IBOutlet weak var sfOutlet: UITextField!
    
    var sf : String = ""
    
    @IBOutlet weak var pfOutlet: UITextField!
    
    var pf : String = ""
    
    @IBOutlet weak var cOutlet: UITextField!
    
    var c : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func courtViewButton(_ sender: Any) {
        pg = (pgOutlet.text!)
        sg = (sgOutlet.text!)
        sf = (sfOutlet.text!)
        pf = (pfOutlet.text!)
        c = (cOutlet.text!)
    }
    
    
    
    

}
