import UIKit

class CreditViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpDismissButton(_ sender: UIButton) {
        dismiss(animated: true,
                completion: nil)
    }
}
