
import UIKit

class CustomButton : UIButton {
    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.size.height/2
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 0.25
    }
    
}


