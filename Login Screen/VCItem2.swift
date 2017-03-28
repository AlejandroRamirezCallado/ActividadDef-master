
import UIKit

class VCItem2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet var colPrincipal:UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5;
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CVCMiCelda2=collectionView.dequeueReusableCell(withReuseIdentifier: "micelda2", for: indexPath) as! CVCMiCelda2
        
            if(indexPath.row==0){
                cell.lblNombre?.text="Yony"
                cell.imgvMain?.image=UIImage(named: "tuenti-icon.jpg")
            }
            else if(indexPath.row==1){
                cell.lblNombre?.text="Jaime"
                cell.imgvMain?.image=UIImage(named: "tuenti-icon.jpg")
                
            }
            else if(indexPath.row==2){
                cell.lblNombre?.text="Peter"
               cell.imgvMain?.image=UIImage(named: "tuenti-icon.jpg")
            }
            else if(indexPath.row==3){
                cell.lblNombre?.text="Alvaro"
                cell.imgvMain?.image=UIImage(named: "tuenti-icon.jpg")
            }
            else if(indexPath.row==4){
                cell.lblNombre?.text="Antonio"
                cell.imgvMain?.image=UIImage(named: "tuenti-icon.jpg")
            }
            
            
            
            
            
            return cell
        }

    
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


