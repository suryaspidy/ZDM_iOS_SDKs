//
//  CoreDataManager.swift
//  ZDM_iOS_SDKs
//
//  Created by surya-zstk231 on 15/12/22.
//

import UIKit
import CoreData

class CDManager: ObservableObject {
    static let shared = CoreDataManager()
    var fetchedData = [SDKDetailEntry]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    let container = NSPersistentContainer(name: "")
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Core data failed: \(error.localizedDescription)")
            }
        }
    }
    
    func saveItems(){
        do {
            try context.save()
            print("Save succesfuly")
        } catch {
            print("Error in saveItem func \(error)")
        }
    }
}

class CoreDataManager {
    
    static let shared = CoreDataManager()
    var fetchedData = [SDKDetailEntry]()
    var favtSDK = [SDKDetailEntry]()
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    var sdkList:[ZDMListedSDK] = [.ZPChartSDK,.ZDMediaPickerSDK,.ZDRichEditor,.GC,.ASAP,.ZPPubSubSDK,.AgentCollision,.ZohoDeskUIKit,.Platform,.ZDDeskSDK,.ZDDeskInHouseSDK,.ZDDashBoardUI,.ZDDashboard,.ZDConversationCell,.ZDChartSDK,.GEOSDK,.MarketPlace]
    
    func loadData() {
        let request: NSFetchRequest<SDKDetailEntry> = SDKDetailEntry.fetchRequest()
        do{
            self.fetchedData = try self.context.fetch(request)
            if self.fetchedData.count == 0 {
                self.addStaticData()
                self.loadData()
            }
        }catch{
            print("Error in loadItem func \(error)")
        }
    }
    
    func getFavtSDK() {
        let request: NSFetchRequest<SDKDetailEntry> = SDKDetailEntry.fetchRequest()
//        request.predicate = NSPredicate(format: "isFavtSDK == %@", true)
        do{
            self.favtSDK = try self.context.fetch(request)
        }catch{
            print("Error in loadItem func \(error)")
        }
    }
    
    func addStaticData() {
        sdkList.forEach { sdk in
            let val = SDKDetailEntry(context: context)
            val.sdkName = ZMDiOSSDKDataGenerator.getSDKName(sdk)
            val.sdkImgUrl = ZMDiOSSDKDataGenerator.getSDKIcon(sdk)
            val.documentationUrl = ZMDiOSSDKDataGenerator.getSDKDocumentationURl(sdk)
            val.localDesc = ZMDiOSSDKDataGenerator.getSDKLocalDesc(sdk)
            val.isFavtSDK = Bool.random()
            self.saveItems()
        }
    }
    
    func deleteItems() {
        self.fetchedData.forEach { entry in
            self.context.delete(entry)
            self.saveItems()
        }
    }
    
    func saveItems(){
        do {
            try context.save()
            print("Save succesfuly")
        } catch {
            print("Error in saveItem func \(error)")
        }
    }
}
