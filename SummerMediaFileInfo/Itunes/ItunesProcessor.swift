//
//  ItunesProcessor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 09/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
open class ItunesProcessor : SummerProcessor {
  var videoFormatRange : Array<String>!
  var audioFormatRange : Array<String>!
  
  override public  init() {
    
    
    
  }
  
  func startProcessing(_ files:[String]) -> [SummerFile] {
    
    
    
    var summerFiles = [SummerFile]()
    for i in 0 ..< files.count {
      let file = files[i]
      
      let filename = file
      // format parting
      let mediaType = "test"
      
      let fileFormat = "test"
      let fileIdentifier = "test"
      let testType = MediaType.unknown
      
      let summerFile = SummerFile(fileName:filename , fileFormat: fileFormat,
                                  fileIdentifier :fileIdentifier ,mediaType:testType)

//      let videoFile = VideoFile(fileName:filename , fileFormat: fileFormat,
//                                fileIdentifier :fileIdentifier ,mediaType:mediaType ,thumbnail:UIImage())
      
      summerFiles.append(summerFile)
      
    }
    return summerFiles
    
  }
  
  private func setupFormatRange() {
    videoFormatRange = SupportFormats.videoFormats
    audioFormatRange = SupportFormats.audioFormats
    
  }

  
}
