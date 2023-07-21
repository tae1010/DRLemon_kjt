//
//  ViewController.swift
//  DRLemon_kjt
//
//  Created by 김정태 on 2023/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var termsTableView: UITableView!
    
    let terms = TermsInfo.terms
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(terms)
        registerXib()
        // Do any additional setup after loading the view.
        termsTableView.dataSource = self
        termsTableView.delegate = self
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "TermsCell", bundle: nil)
        termsTableView.register(nibName, forCellReuseIdentifier: "TermsCell")
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return terms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TermsCell", for: indexPath) as! TermsCell
        cell.termTitle.text = self.terms[indexPath.row].termsTitle
        
        return cell
    }
    
    
}
