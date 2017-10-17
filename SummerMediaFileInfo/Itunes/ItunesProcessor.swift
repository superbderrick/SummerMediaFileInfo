//
//  ItunesProcessor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 09/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
open class ItunesProcessor : SummerProcessor {
  
  override public  init() {
    
    
    
  }
  
  func startProcessing(_ files:[String]) -> [SummerFile] {
    var summerFiles = [SummerFile]()
    for i in 0 ..< files.count {
      let file = files[i]
      
      let filePath = ItunesUtils.getFileNameAndFormat(file)
      let fileIdentifier = ItunesUtils.getFileDocumentPath(file)
      let fileType = ItunesUtils.getFileType(filePath.1)
      
      let summerFile = SummerFile(fileName:filePath.0 , fileFormat: filePath.1,
                                  fileDocumentPath :fileIdentifier ,mediaType:fileType)
      
      summerFiles.append(summerFile)
      
    }
    return summerFiles
    
  }
  
}

