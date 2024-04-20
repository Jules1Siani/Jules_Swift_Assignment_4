
/* Protocols: (Define any 2 the following protocols)
 
 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature: Double), adjustFanSpeed()
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()*/

protocol ElectricitySystem {    // create protocol
    var batteryLevel: Double { get set }
    
    func chargeBattery()
    func checkBatteryLevel()
}

protocol Trailer {         // create protocol
    var brand: String { get set }
    
    func startEngine()
    func stopEngine()
}

class Camper: ElectricitySystem, Trailer {      // create class
    var batteryLevel: Double
    var brand: String
    var MaxbatteryLevel: Double
    
    init(batteryLevel: Double, brand: String) {     //init
        self.batteryLevel = batteryLevel
        self.brand = brand
        self.MaxbatteryLevel = 100
    }
    
    func chargeBattery() {                      // func to charge battery if its not at max
        if self.batteryLevel < self.MaxbatteryLevel  {
            print("Charging battery")
        }
        else {
            print("Already at max battery")
        }
    }
    
    func checkBatteryLevel() {               // func to check and print battery level
        print("Battery Level now at: \(self.batteryLevel)%")
    }
    
    func startEngine() {              // func to start engine when battery at max
        if self.batteryLevel == self.MaxbatteryLevel {
            print("Starting the engine.")
        }
    }
        
    func stopEngine() {         // func to stop engine when battery is not at max
            if self.batteryLevel < self.MaxbatteryLevel {
                print("Stopping the engine.")
            }
        }
}

// Test code
let myCamper = Camper(batteryLevel: 50, brand: "newone")
myCamper.startEngine()
myCamper.stopEngine()
myCamper.chargeBattery()
myCamper.checkBatteryLevel()
