//
//  ChemistryDetailTableViewController.swift
//  chem1
//
//  Created by heroshi on 2017/5/14.
//  Copyright © 2017年 heroshi. All rights reserved.
//

import UIKit

class ChemistryDetailTableViewController: UITableViewController {
    
    
        //@IBOutlet var chemistryImageView: UIImageView!
        @IBOutlet weak var questionLabel: UILabel!
    
//        @IBOutlet var tableView:UITableView!
    

    
    
   
    
    
        var chemistry: Chemistry!
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //       chemistryImageView.image = UIImage(named: chemistry.image)
            questionLabel.text = chemistry.question
            
            
            
            tableView.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
            tableView.tableFooterView = UIView(frame: CGRect.zero)
            tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
            
            // title = chemistry.name
            
            navigationController?.hidesBarsOnSwipe = false
            
            questionLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
            //題目自動換行
            
            //http://www.jianshu.com/p/f409dfc15ba1
            self.tableView.estimatedRowHeight = 80
            self.tableView.rowHeight = UITableViewAutomaticDimension
        }
          /*
        //http://www.jianshu.com/p/f409dfc15ba1
        override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
            return 10
        }
     
        //自动决定真实高度http://www.jianshu.com/p/f409dfc15ba1
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableViewAutomaticDimension
        }
        
        var prototypeCell: ChemistryDetailTableViewCell!
        */
        
        
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            navigationController?.hidesBarsOnSwipe = false
            navigationController?.setNavigationBarHidden(false, animated: true)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
        
        
        // MARK: - UITableView
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ChemistryDetailTableViewCell
            
            // Configure the cell...
            switch indexPath.row {
            case 0:
                cell.fieldLabel.text = "A"
                cell.valueLabel.text = chemistry.btnA
            case 1:
                cell.fieldLabel.text = "B"
                cell.valueLabel.text = chemistry.btnB
            case 2:
                cell.fieldLabel.text = "C"
                cell.valueLabel.text = chemistry.btnC
            case 3:
                cell.fieldLabel.text = "D"
                cell.valueLabel.text = chemistry.btnD
            case 4:
                if chemistry.btnE != "" {
                    cell.fieldLabel.text = "E"
                    cell.valueLabel.text = chemistry.btnE}
                else {cell.fieldLabel.text = " "}
                
            case 5:
                cell.fieldLabel.text = "Ans:"
                cell.valueLabel.text = (chemistry.isVisited) ? "Yes, I've been here before" : "No"
                
            default:
                cell.fieldLabel.text = ""
                cell.valueLabel.text = ""
            }
            
            cell.backgroundColor = UIColor.clear
            
            return cell
        } 
        
        
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
         }
         */
        
}
