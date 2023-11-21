//
//  ViewControllerStart.swift
//  BasketBossCoach
//
//  Created by Noel Ortiz on 11/15/23.
//

import UIKit

public class Player2 : Encodable{
    var name: String
    var score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    
}


class ViewControllerStart: UIViewController {
        
    let defaults = UserDefaults.standard
    
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
        
        
        
        var pg0 = pgOutlet.text!
        var sg0 = sgOutlet.text!
        var sf0 = sfOutlet.text!
        defaults.set(pg0, forKey: "pg")

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
