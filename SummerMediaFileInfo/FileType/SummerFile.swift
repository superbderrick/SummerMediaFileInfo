//
//  SummerFile.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation


open class SummerFile {
  public var fileName:String = "Unknown"
  public var fileFormat:String = "Unknown"
  public var fileDocumentPath:String = "Unknown"
  
  public var mediaType: MediaType = MediaType.unknown
  
  public  init(fileName: String , fileFormat:String , fileDocumentPath: String , mediaType: MediaType) {
    self.fileName = fileName
    self.fileFormat = fileFormat
    self.fileDocumentPath = fileDocumentPath
    self.mediaType = mediaType
    
  }
  
  // sample.
  convenience init(fileName: String) {
    self.init(fileName: fileName, fileFormat: "Unknown", fileDocumentPath: "Unknown", mediaType: MediaType.unknown)
  }
  
}

public enum MediaType : Int {
  
  case unknown
  
  case video
  
  case audio
}

