//
//  SummerExtractor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

class SummerExtractor : ExtractorProtocol {
  
//  private var _processor = SummerProcessor()
//  var processor : SummerProcessor{
//    get{
//      return _processor
//    }
//    set{
//      _processor = newValue
//    }
//  }

 var processor:SummerProcessor!
  
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
  
  func setup(fileType: FileTypes , isBringUnknownFile: Bool) {
    
  }
  
  func getFileInfo() {
    
  }
  
  func start() {
    
  }
  
  
  
}
