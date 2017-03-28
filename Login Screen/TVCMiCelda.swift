

import UIKit

class TVCMiCelda: UITableViewCell {

    @IBOutlet var lblNombre:UILabel?
    @IBOutlet var img:UIImageView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
