//
//  SummerFile.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

open class SummerFile {
  var fileName:String = "unname"
  var fileFormat:String = "unKnown"
  var fileIdentifier:String = "unKnown"
  var mediaType:String = "unKnown"
  
  //temp
//  var fileSize:String = "unKnown"
//  var thumbnailPath:String = "unKnown"
  
  public  init(fileName: String , fileFormat:String , fileIdentifier: String , mediaType: String) {
    self.fileName = fileName
    self.fileFormat = fileName
    self.fileIdentifier = fileName
    self.mediaType = mediaType
    
  }
  
    
}
