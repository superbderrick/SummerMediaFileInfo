//
//  ViewController.swift
//  SummerFileInfoDemo
//
//  Created by Kang Jinyeoung on 03/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit
import SummerFileInfo

class ViewController: UIViewController {

  var fileInfo:SummerFileInfo!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    fileInfo = SummerFileInfo()
    
    //create a SummerFileInfo
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

