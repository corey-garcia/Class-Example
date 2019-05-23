import UIKit


    //we can also not use inheritance here, which would restrict us from using UIImages, meaning
    //that the user's Facebook Profile will not be able to have a profile picture

class FacebookProfile {
    
    //constants
    
    let noProfileNameMsg = "There is no name associated with this Facebook Profile"
    let noProfileAgeMsg = "There is no age associated with this Facebook Profile"
    let noProfileCurrentMsg = "There is no current location associated with this Facebook"
    
    //maybe optionals are too much here, maybe we should think about or have a discussion about
    //initializing to a set value vs. initializing to nil and the value here to user design
    
    //instance variables of a Fecebook Profile. As an engineer, I want the user to have the
    //option to have a Facebook Profile that incorporates the user's name, age, picture, and location
    var profileName : String? = nil
    var profileAge : Int? = nil
    var currentLocation : String? = nil
    
    init()  {
        profileName = nil
        profileAge = nil
        currentLocation = nil
    }
    
    //this function asks the user to input a name for their profile, and
    //sets the user's Profile Name to the input
    func setProfileName(profileName: String){
        self.profileName = profileName
    }
    
    //this function asks the user to input an age for their profile, and
    //sets the user's Profile Age to the given age
    func setProfileAge(profileAge: Int) {
        self.profileAge = profileAge
    }
    
    //this function asks the user to input a currentLocation for their profile, and
    //sets the user's Facebook Profile's current locatin to the given location
    func setCurrentLocation(currentLocation: String) {
        self.currentLocation = currentLocation
    }
    
    //checking methods
    
    //return the Facebook Profile's Age
    func checkProfileName() {
        print(profileName ?? noProfileNameMsg)
    }

    //return the Facebook Profile's Age
    func checkProfileAge() {
        print(profileAge ?? noProfileAgeMsg )
    }
    
    //return the Facebook Profile
    func checkProfileCurrentLocation() {
        print(currentLocation ?? noProfileCurrentMsg)
    }
}
