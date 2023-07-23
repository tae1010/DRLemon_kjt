//
//  OptionalTermsCell.swift
//  DRLemon_kjt
//
//  Created by 김정태 on 2023/07/23.
//

import Foundation
import UIKit

class OptionalTermsCell: UITableViewCell {
    
    @IBOutlet weak var opctionalTermsTitle: UILabel!
    @IBOutlet weak var chooseMarketingStatusView: UIStackView!
    @IBOutlet weak var showChooseMarketingButton: UIButton!
    
    var tapShowChooseMarketingButton = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureChooseMarketingStatusView()
        // Initialization code

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func tabShowChooseMarketingButton(_ sender: UIButton) {
        tapShowChooseMarketingButton.toggle()
        
        if tapShowChooseMarketingButton {
            chooseMarketingStatusView.isHidden = false
            showChooseMarketingButton.setImage(UIImage(systemName: "com-unfold"), for: .normal)
        } else {
            chooseMarketingStatusView.isHidden = true
            showChooseMarketingButton.setImage(UIImage(systemName: "com-fold"), for: .normal)
        }
        
    }
    
    private func configureChooseMarketingStatusView() {
        chooseMarketingStatusView.clipsToBounds = true
        chooseMarketingStatusView.layer.cornerRadius = 10
        chooseMarketingStatusView.backgroundColor = UIColor(named: "chooseMarketingViewBGColor")
    }
    
    
    

}
