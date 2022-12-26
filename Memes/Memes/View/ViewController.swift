//
//  ViewController.swift
//  Memes
//
//  Created by ALYSSON DODO on 22/12/22.
//
import Alamofire
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var memeTableView: UITableView!
    
    var controller = MemeController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        
    }

    func configTableView(){
        memeTableView.delegate = self
        memeTableView.dataSource = self
        self.controller.getRequestMemes { response, error in
            if response == true {
                self.memeTableView.reloadData()
            }else{
                print(error)
            }
        }
        
    }

    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.controller.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = self.controller.loadCurrentName(indexPath: indexPath)// recebendo a string
        
        return cell 
    }
    
    
}
