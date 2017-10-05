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
    
    let allFilesOptions = PHFetchOptions()
    allFilesOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allFiles = PHAsset.fetchAssets(with: allFilesOptions)

  }
  
  override func start() {
    
    if let files = self.allFiles {
      if let cameraProcessor = self.processor as? CameraRollProcessor {
        cameraProcessor.startProcessing(files)
      } else {
        print("Casting Error")
      }
      
    } else {
       print("Nothing Files")
    }
    
  }
  
}
