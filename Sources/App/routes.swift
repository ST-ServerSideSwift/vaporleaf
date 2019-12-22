import Vapor

struct WelcomeContext: Encodable {
    var message: String
}

struct TripContext: Encodable {
    var trips: [Trip]
}
/// Register your application's routes here.
public func routes(_ router: Router) throws {

    router.get("hello") { (request)  in
        return try request.view().render("index")
    }
    
    router.get("welcome") { request -> Future<View> in
        let context = WelcomeContext(message: "Welcome to leaf")
        return try request.view().render("index",context)
    }
    
    router.get("display-trips") { (request) -> Future<View> in
        let trips = [Trip(name: "Nepal"),Trip(name: "India")]
        let context = TripContext(trips: trips)
        return try request.view().render("trip", context)
    }

    


}
