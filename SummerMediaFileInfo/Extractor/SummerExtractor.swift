//
//  SummerExtractor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

class SummerExtractor : ExtractorProtocol {
  func setup(fileType: FileTypes , isBringUnknownFile: Bool) {
    
  }
  
  func getFileInfo() {
    
  }
  
  func start() {
    
  }
  
  
  private var _name = String()
  var name : String{
    get{
      return _name
    }
    set{
      _name = newValue
    }
  }
  
  private var _type = String()
  var type : String{
    get{
      return _type
    }
    set{
      _type = newValue
    }
  }
  
  
  
}
