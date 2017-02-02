//
//  firstVC2.swift
//  TestRootVC
//
//  Created by 阿K on 2017/2/2.
//  Copyright © 2017年 阿K. All rights reserved.
//

import UIKit

class firstVC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func testRoot(_ sender: UIButton) {
        
        let sb = UIStoryboard.init(name: "secondRoot", bundle: Bundle.main)
        let newRootVC = sb.instantiateViewController(withIdentifier: "secondID")
        
        //注意如果是present modally 出来的 则必须用dissmiss
        
//        dismiss(animated: false) {
//            
//            UIApplication.shared.keyWindow?.rootViewController = newRootVC
//        }
        //注意如果是push 出来的 则直接对rootViewController赋值就行了
        UIApplication.shared.keyWindow?.rootViewController = newRootVC
     
        
    }
    
    

    deinit {
        print("第三个界面销毁了")
    }
}
