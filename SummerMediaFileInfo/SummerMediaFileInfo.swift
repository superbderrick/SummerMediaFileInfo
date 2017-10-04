//
//  SummerMediaFileInfo.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

open class SummerMediaFileInfo {
  var fileType: ExtractMode
  
  public  init() {
    self.fileType = ExtractMode.Both
    
    setupFileInfo()
  }
  
  
  
  fileprivate func setupFileInfo() {
    print("Test")
  }
  
  fileprivate func getFiles() {
    
  }
  
}
