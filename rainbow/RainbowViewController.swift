//
//  RainbowViewController.swift
//  rainbow
//
//  Created by 李沐軒 on 2018/5/11.
//  Copyright © 2018年 李沐軒. All rights reserved.
//

import UIKit

class RainbowViewController: UIViewController {
    
    var count = Int(arc4random_uniform(6)+0)
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        count = count + 1
        updateUI()
    }
    
    func updateUI() {
        let number = count % 7
        if number == 0 {
            view.backgroundColor = .red
            titleButton.setTitle("柴", for: .normal)
        } else if number == 1 {
            view.backgroundColor = .orange
            titleButton.setTitle("米", for: .normal)
        } else if number == 2 {
            view.backgroundColor = .yellow
            titleButton.setTitle("油", for: .normal)
        } else if number == 3 {
            view.backgroundColor = .green
            titleButton.setTitle("鹽", for: .normal)
        } else if number == 4 {
            view.backgroundColor = .blue
            titleButton.setTitle("醬", for: .normal)
        } else if number == 5 {
            view.backgroundColor = .cyan
            titleButton.setTitle("醋", for: .normal)
        } else if number == 6 {
            view.backgroundColor = .purple
            titleButton.setTitle("茶", for: .normal)
        } else if count == 7 {
            count = 0
        }
        
    }
    
    
    @IBOutlet weak var titleButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
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
