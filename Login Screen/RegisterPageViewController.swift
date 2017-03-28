
import UIKit

class RegisterPageViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text;
        let userPassword = userPasswordTextField.text;
        let userRepeatPassword = repeatPasswordTextField.text;
        
        // Check for empty fields
        if((userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (userRepeatPassword?.isEmpty)!){
            displayMyAlertMessage(alertTitle: "Empty fields detected", alertMessage: "You must fill all fields in order to registrate your account.");
            return;
        }
        
        // Validate email adress
        if(validateEmail(testStr: (userEmail)!)){
            displayMyAlertMessage(alertTitle: "Alert", alertMessage:"You must enter a valid email adress.");
            return;
        }
        
        // Check if passwords match
        if(userPassword != userRepeatPassword){
            displayMyAlertMessage(alertTitle:"Alert", alertMessage:"Passwords do not match!");
            return;
        }
        
        // Store data
        UserDefaults.standard.set(userEmail, forKey:"userEmail");
        UserDefaults.standard.set(userPassword, forKey:"userPassword");
        UserDefaults.standard.synchronize();
        
        // Display alert message with confirmation
        displayMyAlertMessage(alertTitle: "Alert", alertMessage: "Registation is susccessful. You may now log in!");
        self.dismiss(animated:true, completion:nil);
        
    }
    
    func displayMyAlertMessage(alertTitle:String, alertMessage:String){
        var myAlert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: .alert);
        
        let okAction = UIAlertAction(title: "Ok", style: .default);
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
    }
    
    func validateEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3,}]";
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx);
        return emailTest.evaluate(with: testStr);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
