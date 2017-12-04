//
//  PersonagemTableViewCell.swift
//  TrabalhoFinalPedro
//
//  Created by Aloc SP08120 on 02/12/2017.
//  Copyright © 2017 Aloc SP08120. All rights reserved.
//

import UIKit

class PersonagemTableViewCell: UITableViewCell {

    @IBOutlet weak var Icone: UIImageView!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var nacionalidade: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
