//
//  ViewController.swift
//  SummerMediaFileInfoDemo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit
import SummerMediaFileInfo

class ViewController: UIViewController {
  
  var mediaFileInfo : SummerMediaFileInfo!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    mediaFileInfo = SummerMediaFileInfo()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

