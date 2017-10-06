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
  var mediaType: MediaType = MediaType.unknown
  
  public  init(fileName: String , fileFormat:String , fileIdentifier: String , mediaType: MediaType) {
    self.fileName = fileName
    self.fileFormat = fileFormat
    self.fileIdentifier = fileIdentifier
    self.mediaType = mediaType
    
  }
    
}

public enum MediaType : Int {
  
  case unknown
  
  case video
  
  case audio
}

