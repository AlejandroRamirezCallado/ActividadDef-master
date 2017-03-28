

import UIKit

class VCItem1: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tbMitable:UITableView?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView( _ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return 5
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell:TVCMiCelda = tableView.dequeueReusableCell(withIdentifier: "micelda1") as! TVCMiCelda
        //cell.lblNombre?.text="yony"
        if(indexPath.row==0){
            cell.lblNombre?.text="Yony"
            cell.img?.image=UIImage(named: "tuenti-icon.jpg")
        }
        else if(indexPath.row==1){
            cell.lblNombre?.text="Jaime"
              cell.img?.image=UIImage(named: "tuenti-icon.jpg")
            
        }
        else if(indexPath.row==2){
            cell.lblNombre?.text="Peter"
              cell.img?.image=UIImage(named: "tuenti-icon.jpg")
        }
        else if(indexPath.row==3){
            cell.lblNombre?.text="Alvaro"
              cell.img?.image=UIImage(named: "tuenti-icon.jpg")
        }
        else if(indexPath.row==4){
            cell.lblNombre?.text="Antonio"
              cell.img?.image=UIImage(named: "tuenti-icon.jpg")
        }

    
        
    
        
        return cell
    }
    
       //para imprimir en consola
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NSLog("He pinchado en: %d", indexPath.row)
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
