import Foundation
import CoreBluetooth

public protocol PeripheralDelegate: AnyObject {
    func peripheral(_ peripheral: Peripheral, didDiscoverServices error: Error?)
    func peripheral(_ peripheral: Peripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?)
    func peripheral(_ peripheral: Peripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?)
    func peripheral(_ peripheral: Peripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?)
    func peripheral(_ peripheral: Peripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?)
    func peripheral(_ peripheral: Peripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?)
    func peripheral(_ peripheral: Peripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?)
    func peripheral(_ peripheral: Peripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?)
    func peripheral(_ peripheral: Peripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?)
    func peripheral(_ peripheral: Peripheral, didReadRSSI RSSI: NSNumber, error: Error?)
    func peripheral(_ peripheral: Peripheral, didModifyServices services: [CBService])
    func peripheral(_ peripheral: Peripheral, didOpen channel: CBL2CAPChannel?, error: Error?)

    func peripheralDidUpdateName(_ peripheral: Peripheral)
}

// Default values
public extension PeripheralDelegate {
    func peripheral(_ peripheral: Peripheral, didDiscoverServices error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didDiscoverIncludedServicesFor service: CBService, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didDiscoverDescriptorsFor characteristic: CBCharacteristic, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didUpdateValueFor descriptor: CBDescriptor, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didWriteValueFor characteristic: CBCharacteristic, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didWriteValueFor descriptor: CBDescriptor, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didUpdateNotificationStateFor characteristic: CBCharacteristic, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didReadRSSI RSSI: NSNumber, error: Error?) { }
    func peripheral(_ peripheral: Peripheral, didModifyServices services: [CBService]) { }
    func peripheral(_ peripheral: Peripheral, didOpen channel: CBL2CAPChannel?, error: Error?) { }

    func peripheralDidUpdateName(_ peripheral: Peripheral) { }
}
