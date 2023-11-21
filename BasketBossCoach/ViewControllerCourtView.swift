//
//  ViewControllerCourtView.swift
//  BasketBossCoach
//
//  Created by Noel Ortiz on 11/15/23.
//

import UIKit

class ViewControllerCourtView: UIViewController {

    
    @IBOutlet weak var pgLabel: UILabel!
    
    
    @IBOutlet weak var sgLabel: UILabel!
    
    
    @IBOutlet weak var sfLabel: UILabel!
    
    
    @IBOutlet weak var pfLabel: UILabel!
    
    
    @IBOutlet weak var cLabel: UILabel!
    
    var pg2 = 0
    var sg2 = 0
    var sf2 = 0
    var pf2 = 0
    var c2 = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pgLabel.text = "\(pg2)"
        sgLabel.text = "\(sg2)"
        sfLabel.text = "\(sf2)"
        pfLabel.text = "\(pf2)"
        cLabel.text = "\(c2)"
        // Do any additional setup after loading the view.
        
    }
    
    
    
    
    
    
    
    
    
}
