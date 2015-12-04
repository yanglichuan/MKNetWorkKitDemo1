//
//  ViewController.swift
//  mynetwork
//
//  Created by  yanglc on 15/12/4.
//  Copyright © 2015年  yanglc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        startRequest()
    }
    
    
    func startRequest(){
     
      //  http://hq.sinajs.cn/list=sh601006
        
        var engine = MKNetworkHost(hostName: "hq.sinajs.cn");
       var request  = engine.requestWithPath("list=sh601006");
        request.addCompletionHandler { (opration) -> Void in
           
            
            
            print(opration.responseAsString)
          
            
        }
        
        engine.startRequest(request)
    
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

