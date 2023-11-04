//
//  WeatherVMTest.swift
//  weatherAppTests
//
//  Created by Prince Jeetan on 23/10/2023.
//

@testable import weatherApp
import XCTest


final class WeatherVMFailTest: XCTestCase {

    private var networkManager: NetwokManager!
    private var weatherVM: WeatherViewModel!
    
    override func setUp() {
        networkManager = NetworkManagerFailMock()
        weatherVM = WeatherViewModel(networkManager: networkManager)
    }

    override func tearDown() {
        networkManager = nil
        weatherVM = nil
    }

    func testCurrentTemparature() throws {
        
        //arrange
        let temparature = "24"
        
        // act
        let currentTemparature = weatherVM.currentTemparature
        
        //assert
        XCTAssertEqual(temparature, currentTemparature, "Temparature is Not Equal")
  
    }
    
    func testCurrentStatusMinMax() throws {
        
        //arrange
        let statusDayLight = "Overcast  🌕"
        
        // act
        let currentStatusDayLight = weatherVM.currentStatusDayLight
        
        //assert
        XCTAssertEqual(statusDayLight, currentStatusDayLight, "statusDayLight is Not Equal")
  
    }
    
    func testCurrentWeatherImage() throws {
        
        //arrange
        let image = "3"
        
        // act
        let currentImage = weatherVM.image
        
        //assert
        XCTAssertEqual(image, currentImage, "image is Not Equal")
  
    }
    
    func testLoadWeatherData() async throws{
    
        // act
        await weatherVM.fetchData()
        
        let weather = weatherVM.weather
        
        //assert
        XCTAssertNil(weather, "Weather Should not be nil")
        
    }
    
}
