//
//  ViewControllerStart.swift
//  BasketBossCoach
//
//  Created by Noel Ortiz on 11/15/23.
//

import UIKit

class ViewControllerStart: UIViewController {
    
    var jerseyNumbers = [Int]()

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
       pg = "\(pgOutlet.text!)"
        sg = "\(sgOutlet.text!)"
        sf = "\(sfOutlet.text!)"
        pf = "\(pfOutlet.text!)"
        c = "\(cOutlet.text!)"
    }
    
    
   
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewControllerCourtView
        nvc.pg2 = pg
        nvc.sg2 = sg
        nvc.sf2 = sf
        nvc.pf2 = pf
        nvc.c2 = c
        
    }
    

}
