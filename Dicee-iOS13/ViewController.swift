import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var dice1 = 0
    var dice2 = 5
    var images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = images[dice1]
        diceImageView2.image = images[dice2]
        diceImageView1.alpha = 1
        diceImageView2.alpha = 1
    }

    @IBAction func rollButtonHandler(_ sender: Any) {
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        dice1 = Int.random(in: 0...5)
        dice2 = Int.random(in: 0...5)
        viewDidLoad()
    }
    
}

