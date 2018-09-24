
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
    func playSound(fileName: String){
        if let path = Bundle.main.path(forResource: fileName, ofType: "wav"){
        let url = URL(fileURLWithPath: path)
        do{
            self.sound = try AVAudioPlayer(contentsOf: url)
            self.sound?.play()
        }
        catch{
            print("Can't find file")
        }
    }
  


}
    func addToPattern() {
        pattern.append(Int(arc4random_uniform(4)))
    }
    func restart(){
        pattern.removeAll()
        index = 0
        addToPattern()
        startButton.alpha = 1.0
    }
    func flashColor(number: Int){
        self.playSound(fileName: String(number))
        UIView.transition(with: colorsDisplays[number], duration: 0.2, options: .transitionCrossDissolve, animations: {
            self.colorsDisplays[number].alpha
    }

}
}
