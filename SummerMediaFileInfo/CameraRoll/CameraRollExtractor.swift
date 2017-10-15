//
//  CameraRollExtractor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

class CameraRollExtractor: SummerExtractor{
  
  // MARK: Properties
  var allFiles: PHFetchResult<PHAsset>?
  
  override init() {
    super.init()
    
    self.processor = CameraRollProcessor()
  }
  
  override func setup(fileType: FileTypes , isBringUnknownFile: Bool) {
    
    setupInternal()

  }
  
  override func  getFiles() -> [SummerFile]? {
    if let files = allFiles {
      if let cameraProcessor = self.processor as? CameraRollProcessor {
        let testValue = cameraProcessor.startProcessing(files)
        
        return testValue
        
      } else {
        return nil
      }
      
    } else {
        return nil
    }
    
  }
  
  fileprivate func setupInternal(){
    setupPHAsset()
  }
  
  fileprivate func setupPHAsset() {
    let allFilesOptions = PHFetchOptions()
    allFilesOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allFiles = PHAsset.fetchAssets(with: allFilesOptions)
    
  }
  
}
