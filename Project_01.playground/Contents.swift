import UIKit


/* Players
 -----------------------------*/

// Each player
var joeSmith: [String: AnyObject]           = ["name" : "Joe Smith", "height" : 42, "experience" : "yes", "guardian" : "Jim and Jan Smith"]
var jillTanner: [String: AnyObject]         = ["name" : "Jill Tanner", "height" : 36, "experience" : "yes", "guardian" : "Clara Tanner"]
var billBon: [String: AnyObject]            = ["name" : "Bill Bon", "height" : 43, "experience" : "yes", "guardian" : "Sara and Jenny Bon"]
var evaGordon: [String: AnyObject]          = ["name" : "Eva Gordon", "height" : 45, "experience" : "no", "guardian" : "Wendy and Mike Gordon"]
var mattGill: [String: AnyObject]           = ["name" : "Matt Gill", "height" : 40, "experience" : "no", "guardian" : "Charles and Sylvia Gill"]
var kimmyStein: [String: AnyObject]         = ["name" : "Kimmy Stein", "height" : 41, "experience" : "no", "guardian" : "Bill and Hillary Stein"]
var sammyAdams: [String: AnyObject]         = ["name" : "Sammy Adams", "height" : 45, "experience" : "no", "guardian" : "Jeff Adams"]
var karlSaygan: [String: AnyObject]         = ["name" : "Karl Saygan", "height" : 42, "experience" : "yes", "guardian" : "Heather Bledsoe"]
var suzaneGreenberg: [String: AnyObject]    = ["name" : "Suzane Greenberg", "height" : 44, "experience" : "yes", "guardian" : "Henrietta Dumas"]
var salDani: [String: AnyObject]            = ["name" : "Sal Dali", "height" : 41, "experience" : "no", "guardian" : "Gala Dali"]
var joeKavalier: [String: AnyObject]        = ["name" : "Joe Kavalier", "height" : 39, "experience" : "no", "guardian" : "Sam and Elaine Kavalier"]
var benFinkelstein: [String: AnyObject]     = ["name" : "Ben Finkelstein", "height" : 44, "experience" : "no", "guardian" : "Aaron and Jill Finkelstein"]
var diegoSoto: [String: AnyObject]          = ["name" : "Diego Soto", "height" : 41, "experience" : "yes", "guardian" : "Robin and Sarika Soto"]
var chloeAlaska: [String: AnyObject]        = ["name" : "Chloe Alaska", "height" : 47, "experience" : "no", "guardian" : "David and Jamie Alaska"]
var arnoldWillis: [String: AnyObject]       = ["name" : "Arnold Willis", "height" : 43, "experience" : "no", "guardian" : "Claire Willis"]
var phillipHelm: [String: AnyObject]        = ["name" : "Phillip Helm", "height" : 44, "experience" : "yes", "guardian" : "Thomas Helm and Eva Jones"]
var lesClay: [String: AnyObject]            = ["name" : "Les Clay", "height" : 42, "experience" : "yes", "guardian" : "Wynonna Brown"]
var herschelKrustofski: [String: AnyObject] = ["name" : "Herschel Krustofski", "height" : 45, "experience" : "yes", "guardian" : "Hyman and Rachel Krustofski"]

// All players
var allPlayers: [[String: AnyObject]] = [
    joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDani, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski
]

// Amount of players
var playerCount = allPlayers.count

// Experienced players
var hasExperience: [[String: AnyObject]] = []
var hasNoExperience: [[String: AnyObject]] = []

for player in allPlayers {
    if player["experience"] as! String == "yes" {
        hasExperience.append(player)
    } else {
        hasNoExperience.append(player)
    }
}

// Average height
var averageHeight: [[String: Int]] = []

// Amount of experienced players
var hasExperienceCount = hasExperience.count
var hasNoExperienceCount = hasNoExperience.count

/* Teams
 -----------------------------*/

// Each team
var dragons: [[String: AnyObject]] = []
var sharks: [[String: AnyObject]] = []
var raptors: [[String: AnyObject]] = []

// All teams
var allTeams = [dragons, sharks, raptors]

// Amount of teams
var teamCount = allTeams.count

/* Teams & Players
 -----------------------------*/

// Players per team
var hasExperiencePlayersPerTeam = hasExperienceCount / teamCount
var hasNoExperiencePlayersPerTeam = hasNoExperienceCount / teamCount
var totalPlayersPerTeam = playerCount / teamCount


for player in allPlayers {
    if (player["experience"] as! String == "yes") && (dragons.count < hasExperiencePlayersPerTeam)  {
        dragons.append(player)
    }
    if (player["experience"] as! String == "no") && (dragons.count < totalPlayersPerTeam)  {
        dragons.append(player)
    }
    if (player["experience"] as! String == "yes") && (sharks.count < hasExperiencePlayersPerTeam)  {
        sharks.append(player)
    }
    if (player["experience"] as! String == "no") && (sharks.count < totalPlayersPerTeam)  {
        sharks.append(player)
    }
    if (player["experience"] as! String == "yes") && (raptors.count < hasExperiencePlayersPerTeam)  {
        raptors.append(player)
    }
    if (player["experience"] as! String == "no") && (raptors.count < totalPlayersPerTeam)  {
        raptors.append(player)
    }
}


//Dragons - March 17, 1pm, Sharks - March 17, 3pm, Raptors - March 18, 1pm



/* Letters
 -----------------------------*/

// Dragon letters
for dragon in dragons {
    print("Dear \(dragon["guardian"]!),\nWelcome to the Dragons! \(dragon["name"]!) has their first practice on March 17 at 1pm. All players that are late will be fed to the Dragon.\nLove,\nCoach Dragon")
}

// Shark letters
for shark in sharks {
    print("Dear \(shark["guardian"]!),\nWelcome to the Sharks! \(shark["name"]!) has their first practice on March 17 at 1pm. All players that are late will be fed to the Shark.\nLove,\nCoach Shark")
}

// Raptor letters
for raptor in raptors {
    print("Dear \(raptor["guardian"]!),\nWelcome to the Raptors! \(raptor["name"]!) has their first practice on March 17 at 1pm. All players that are late will be fed to the Raptor.\nLove,\nCoach Bob")
}










