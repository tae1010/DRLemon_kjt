//
//  ViewController.swift
//  DRLemon_kjt
//
//  Created by 김정태 on 2023/07/20.
//

import UIKit

class TermsViewController: UIViewController {
    
    @IBOutlet weak var termsTableView: UITableView!
    
    let requiredTerms = TermsInfo.requiredTerms
    let optionalTerms = TermsInfo.optionalTerms
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerXib()
        
        termsTableView.dataSource = self
        termsTableView.delegate = self
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "TermsCell", bundle: nil)
        let optionalNibName = UINib(nibName: "OptionalTermsCell", bundle: nil)
        
        termsTableView.register(nibName, forCellReuseIdentifier: "TermsCell")
        termsTableView.register(optionalNibName, forCellReuseIdentifier: "OptionalTermsCell")
    }
    
}

extension TermsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 0
        case 1:
            return 26
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            return nil
        } else {
            let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 1))
            headerView.backgroundColor = UIColor(named: "temrsHeaderColor")
            
            let headerWhitheView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 26))
            headerWhitheView.backgroundColor = .white
            
            // Add the white view as a subview of the headerView
            headerWhitheView.addSubview(headerView)
            
            return headerWhitheView
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return requiredTerms.count
        case 1:
            return optionalTerms.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TermsCell", for: indexPath) as! TermsCell
        let optionalCell = tableView.dequeueReusableCell(withIdentifier: "OptionalTermsCell", for: indexPath) as! OptionalTermsCell
        let section = indexPath.section
        
        cell.selectionStyle = .none
        optionalCell.selectionStyle = .none
        
        switch section {
        case 0:
            cell.termTitle.text = self.requiredTerms[indexPath.row].termsTitle
            return cell
        case 1:
            optionalCell.opctionalTermsTitle.text = self.optionalTerms[indexPath.row].termsTitle
            return optionalCell
        default:
            break
        }
        
        return UITableViewCell()
        
    }
}
