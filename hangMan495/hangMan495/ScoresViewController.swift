//
//  ScoresViewController.swift
//  hangMan495
//
//  Created by Salvador Ramirez on 12/27/16.
//  Copyright © 2016 Joseph Molina. All rights reserved.
//

import UIKit
import CoreData
class ScoresViewController: UIViewController {

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
                        print(name!)
                    }
                    if(item.value(forKey: "date") != nil){
                        let date = item.value(forKey: "date")
                        print(date!)
                    }
                    if(item.value(forKey: "score") != nil){
                        let score = item.value(forKey: "score")
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
