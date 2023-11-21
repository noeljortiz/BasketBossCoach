
import UIKit
struct Player: Codable{
   var name = ""
 var number = 0
}

class AppData{
    //static because only one will need to exist
    static var players = [Player]()
}
class ViewControllerRoster: UIViewController,UITableViewDelegate,UITableViewDataSource {
        
    @IBOutlet weak var nameOut: UITextField!
    @IBOutlet weak var rostaView: UITableView!
    @IBOutlet weak var numberOut: UITextField!
    
    
    let defaults = UserDefaults.standard
        
        override func viewDidLoad() {
            super.viewDidLoad()
            rostaView.delegate = self
             rostaView.dataSource = self
            if let n = defaults.string(forKey: "TheSquad") {
             
                for p in AppData.players{
                    print(p)
                }
              rostaView.reloadData()
            }
            
        }
        
    @IBAction func submitButt(_ sender: UIButton) {
        let namee = nameOut.text!
        let num = Int(numberOut.text!)!
        let yay: () =  AppData.players.append(Player(name: namee,number: num))
        defaults.set(yay, forKey: "TheSquad")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = "\(AppData.players[indexPath.row])"
        return cell
    }

    }

