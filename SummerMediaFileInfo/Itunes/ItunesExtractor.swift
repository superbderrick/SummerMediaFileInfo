//
//  ItunesExtractor.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation


class ItunesExtractor: SummerExtractor{
  
  
  var localFiles: Array<String>?
  
  
  override init() {
    super.init()
    
    self.processor = ItunesProcessor()
  }
  
  override func setup(fileType: FileTypes , isBringUnknownFile: Bool) {
    
    setupInternal()
    
  }

  private func setupInternal(){
    setupFileManger()
  }
  
  private func setupFileManger() {
    // Create a FileManger.
    let fileManager = FileManager.default
    
    // Get Filelist.
    
    do {
      let items = try! fileManager.contentsOfDirectory(atPath: applicationDocumentsDirectory())
      
      if localFiles == nil {
        localFiles = items
      }
    } catch {
      print("no data")
    }
    
    
  }
  
  override func start() {
    if let files = localFiles {
      if let itunesProcessor = self.processor as? ItunesProcessor {
        let testValue = itunesProcessor.startProcessing(files)
        
//        for file in testValue {
//          print("fileName = \(file.fileName)")
//          print("fileFormat = \(file.fileFormat)")
//          print("filelocal = \(file.fileIdentifier)")
//          print("fileType = \(file.mediaType)")
//        }
        
        
      } else {
        print("Casting Error")
      }
      
    } else {
      print("Nothing Files")
    }
  }
  
  
  
  
}

extension ItunesExtractor {
  private func applicationDocumentsDirectory () -> String {
    let dirPaths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
    let docsDir = dirPaths[0] as String
    return docsDir
  }
}
