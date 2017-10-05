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
  
  override init() {
    super.init()
    self.name = "Bulbasaur"
    self.type = "Grass"
  }
  
  override func setup(fileType: FileTypes , isBringUnknownFile: Bool) {
    print("file Type : \(fileType)")
    print("isBringUnknownFile : \(isBringUnknownFile)")
    
    let allPhotos: PHFetchResult<PHAsset>!
    let allPhotosOptions = PHFetchOptions()
    allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allPhotos = PHAsset.fetchAssets(with: allPhotosOptions)
    
    
    print("count : \(allPhotos.count)")
    
    if allPhotos != nil {
      for i in 0 ..< allPhotos.count {
        let asset = allPhotos[i]
        
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
      }
      
    }
  }
  
  override func start() {

  }
  
}
