//
//  SearchVMTest.swift
//  weatherAppTests
//
//  Created by Prince Jeetan on 24/10/2023.
//

@testable import weatherApp
import XCTest

final class SearchVMSuccessTest: XCTestCase {
    
    private var searchVM: SearchViewModel!
    private var networkManager: NetwokManager!
   
    override func setUp() {
        networkManager = NetworkManagerSuccessMock()
        searchVM = SearchViewModel(networkManager: networkManager)
    }
    
    override func tearDown() {
        networkManager = nil
        searchVM = nil
    }

    func testfetchLocations()async throws {
        //arrange
        let location = "Nablus"
        
        // act
        await searchVM.fetchLocations(with: location)
        let cities = searchVM.cities
        
        //assert
        XCTAssertNotNil(cities, "cities is shouldn't be nil")
    }

}
