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
  var options: SummerMediaFileInfoCustomizable!
  

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Later It has to change as tablebiew Style.
    options = DefaultOption() as SummerMediaFileInfoCustomizable
    mediaFileInfo = SummerMediaFileInfo()
    mediaFileInfo.setup(options)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

