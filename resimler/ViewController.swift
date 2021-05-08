//
//  ViewController.swift
//  resimler
//
//  Created by erdem öden on 8.05.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    

    var name = ["spongebob","patrick","squidward","sandy","gary","mr.krab","plankton","mrs.puff","flying dutchman","larry"];
    var name2 = ""
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellTableViewCell
        cell?.lbl.text = name[indexPath.row]
        cell?.img.image = UIImage(named: name[indexPath.row])
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        name2 = name[indexPath.row];
        performSegue(withIdentifier: "tosecondvc", sender: nil);
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? secondvc{
            //let destination = segue.destination as? secondvc
            destination.gelen = name2
        }
    }

}

