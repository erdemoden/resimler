//
//  secondvc.swift
//  resimler
//
//  Created by erdem öden on 8.05.2021.
//

import UIKit

class secondvc: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    var gelen = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "You Chose : \(gelen)"
        img.image = UIImage(named: gelen)

    }
    
    @IBAction func vote(_ sender: Any) {
        let alert = UIAlertController(title: "You Voted", message: "You voted \(gelen) thank you so much", preferredStyle: UIAlertController.Style.alert)
        let button = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alert.addAction(button)
        self.present(alert, animated: true, completion: nil)
    }
    
}
