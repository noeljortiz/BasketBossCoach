//
//  ViewControllerGameLog.swift
//  BasketBossCoach
//
//  Created by Noel Ortiz on 11/15/23.
//


    
    
    



import UIKit

class ViewControllerGameLog: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var games = [String]()
    
    @IBOutlet weak var youPointsOutlet: UITextField!
    
    
    @IBOutlet weak var oppPointsOutlet: UITextField!
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = games[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self
        // Do any additional setup after loadingthe view.
        
    }
    

    
    @IBAction func addAction(_ sender: Any) {
    
        let you = youPointsOutlet.text
        let opp = oppPointsOutlet.text
        var win = ""
        if let y = you{
            
            if let o = opp{
                
                if y > o{
                 win = "W"
                }
                else{
                win = "L"
                }
                
                games.append("\(y) - \(o) \(win)")
                tableViewOutlet.reloadData()
                
            }
          
        }
       
    }
    
    
    
    
}
