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
  
  private var internalExtractor : SummerExtractor!
  public  init() {
    
  }
  
  open func setup(_ options: SummerMediaFileInfoCustomizable) {
    
    internalExtractor = ExtractorFactory.getExtractor(extractMode: options.extractMode)
    
    internalExtractor.setup(fileType: options.fileType, isBringUnknownFile: options.isBringUnknownFile)
  }
  
  
  
  open  func getSummerFileInfo(completion: @escaping ([SummerFile]) -> Void) {

    DispatchQueue.main.async {
      self.internalExtractor.getFiles()
    }
  }

  
}


