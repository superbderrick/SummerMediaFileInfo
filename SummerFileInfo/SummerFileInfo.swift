//
//  SummerFileInfo.swift
//  SummerFileInfo
//
//  Created by Kang Jinyeoung on 03/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

open class SummerFileInfo {
  var fileType: ExtractFileType
  
  public  init() {
    self.fileType = ExtractFileType.BOTH
    
    setupFileInfo()
  }
  

  
  fileprivate func setupFileInfo() {
    print("Test")
  }
  
  fileprivate func getFiles() {
    
  }
 
}
