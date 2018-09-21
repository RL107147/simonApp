
import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet var colorViews: [UIView]!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var colorsFrame: UIView!
    
    var sound: AVAudioPlayer?
    var timer = Timer()
    var pattern = [Int]()
    var index = 0
    var playerTurn = false
    var gameOver = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onStartButtonTapped(_ sender: UIButton) {
    }
    @IBAction func onColorTapped(_ sender: UITapGestureRecognizer) {
    }
    
  


}

