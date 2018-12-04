
import UIKit
//add this to be able to see the UI changes in simulator without running the app
@IBDesignable
class CurrencyTextField: UITextField {
    
    // only use this when you want to add subview to the view itself
    override func draw(_ rect: CGRect) {
        //create a currenct label ($) on the left of the text field
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.1277825343)
        currencyLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.textAlignment = .center
        currencyLabel.clipsToBounds = true
        //Create a formatter
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        //set the currency to the device location
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    //Run code to show interface Builder
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2453446062)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
