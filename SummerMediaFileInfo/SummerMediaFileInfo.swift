//
//  SummerMediaFileInfo.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

open class SummerMediaFileInfo  {
  
  // MARK: Properties
  
  open var summerFiles: [SummerFile]?
  

  
  public  init() {
    
  }
  
  open func setup(_ options: SummerMediaFileInfoCustomizable) {
    
    let extractor = ExtractorFactory.getExtractor(extractMode: options.extractMode)
    
   
  
    if let cameraRollExtractor = extractor as? CameraRollExtractor {
     cameraRollExtractor.test()
     cameraRollExtractor.setup(fileType: options.fileType, isBringUnknownFile: options.isBringUnknownFile)
      cameraRollExtractor.start()
    }
    
    
    
    
//    if extractor is CameraRollExtractor {
//      let p:CameraRollExtractor = extractor as SummerExtractor as! CameraRollExtractor
//      p.test()
//      p.setup(fileType: options.fileType, isBringUnknownFile: options.isBringUnknownFile)
//      p.start()
//    }
    
    
  }
  

  
  
 
  

  
}


