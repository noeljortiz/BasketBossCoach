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
    
    var pg : Int = 0
    
    @IBOutlet weak var sgOutlet: UITextField!
    
    var sg : Int = 0
    
    @IBOutlet weak var sfOutlet: UITextField!
    
    var sf : Int = 0
    
    @IBOutlet weak var pfOutlet: UITextField!
    
    var pf : Int = 0
    
    @IBOutlet weak var cOutlet: UITextField!
    
    var c : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func courtViewButton(_ sender: Any) {
       pg = Int(pgOutlet.text!) ?? 0
        sg = Int(sgOutlet.text!) ?? 0
        sf = Int(sfOutlet.text!) ?? 0
        pf = Int(pfOutlet.text!) ?? 0
        c = Int(cOutlet.text!) ?? 0
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
