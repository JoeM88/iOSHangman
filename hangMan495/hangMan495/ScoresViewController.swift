//
//  ScoresViewController.swift
//  hangMan495
//
//  Created by Salvador Ramirez on 12/27/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit
import CoreData
class ScoresViewController: UIViewController, UITableViewDataSource{
    
    var nameArrayList =  [String]()
    var dateArrayList = [String]()
    var scoreArrayList = [Int]()
    var counter = 0
    
    @IBAction func returnHome(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainScreen")
        self.present(vc!, animated: true, completion: nil)
    }
    func numberOfSectionsInTableView(tableView:UITableView) -> Int{
        
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int{
        
        return nameArrayList.count
    }
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath:IndexPath)->UITableViewCell{
        
        var cell = UITableViewCell()
        
       cell.textLabel?.text = String(nameArrayList[counter]) + "    " + String(dateArrayList[counter]) + "    " + "Score:" + String(scoreArrayList[counter])
        
        counter = counter  + 1
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDel: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        
        do{
            let request = NSFetchRequest<NSFetchRequestResult>(entityName:"Entity")
            let results = try context.fetch(request)
            
            if results.count > 0{
                
                
                for item in results as! [NSManagedObject]{
                    //let name = item.value(forKey: "name")
                    if(item.value(forKey: "name") != nil)
                    {
                        let name = item.value(forKey: "name")
                        nameArrayList.append(name as! String)
                        print(name!)
                    }
                    if(item.value(forKey: "date") != nil){
                        let date = item.value(forKey: "date")
                        dateArrayList.append(date as! String)
                        print(date!)
                    }
                    if(item.value(forKey: "score") != nil){
                        let score = item.value(forKey: "score")
                        scoreArrayList.append(score as! Int)
                        print(score!)
                    }
                }
            }
        }catch{
            print("Error: \(error)")
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
