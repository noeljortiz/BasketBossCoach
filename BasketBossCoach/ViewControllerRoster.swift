
import UIKit
<<<<<<< Updated upstream
struct Player: Codable{
   var name = ""
 var number = 0
=======
struct Player:Codable{
    var name : String
    var number : Int
>>>>>>> Stashed changes
}

class AppData{
    static var apname = ""
    static var apnumber = 0
    static var playa = [Player]
}
class ViewControllerRoster: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let defaults = UserDefaults.standard
    @IBOutlet weak var nameOut: UITextField!
    @IBOutlet weak var rostaView: UITableView!
    @IBOutlet weak var numberOut: UITextField!
  

        
        override func viewDidLoad() {
            super.viewDidLoad()
            rostaView.delegate = self
             rostaView.dataSource = self
<<<<<<< Updated upstream
            if let n = defaults.string(forKey: "TheSquad") {
             
                for p in AppData.players{
                    print(p)
=======
            
            if let items = UserDefaults.standard.data(forKey: "TheSquad") {
                            let decoder = JSONDecoder()
                if let decoded = try? decoder.decode([Player].self, from: items) {
                    AppData.playa = decoded
                            }
                
                for p in AppData.playa{
                    print(p.name)
>>>>>>> Stashed changes
                }
             
                    }
            
            
            
//            if let n = defaults.object(forKey: "TheSquad"){
//                for p in AppData.players{
//                    print(p)
//                }
//            }

            
            rostaView.reloadData()
        }
        
    @IBAction func submitButt(_ sender: UIButton) {
<<<<<<< Updated upstream
        let namee = nameOut.text!
        let num = Int(numberOut.text!)!
        let yay: () =  AppData.players.append(Player(name: namee,number: num))
        defaults.set(yay, forKey: "TheSquad")

=======
//        AppData.apname = nameOut.text!
//        AppData.apnumber = Int(numberOut.text!)!
//        let yay = Player(name: AppData.apname, number: AppData.apnumber)
        
       let namer = nameOut.text!
       let numberr = Int(numberOut.text!)!
        var p1 = Player(name: namer,number: numberr)
        AppData.playa.append(p1)
        
//        AppData.players.append(yay)
   //let yeye = playa.append(Player(name: namee,number: num))
        
      //  defaults.set(p1, forKey: "TheSquad")
        
  rostaView.reloadData()
        
       let  encoder = JSONEncoder()
        if let encoded = try? encoder.encode(AppData.playa) {
            defaults.set(encoded, forKey: "TheSquad")
                     }
>>>>>>> Stashed changes
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        AppData.playa.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rostaCell")!
        cell.textLabel?.text = "Name : \(AppData.playa[indexPath.row].name)  Number : \(AppData.playa[indexPath.row].number)"
        return cell
    }

    

