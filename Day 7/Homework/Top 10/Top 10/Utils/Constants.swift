//
//  Constants.swift
//  Top 10
//
//  Created by Consultant on 8/26/22.
//

import UIKit

struct Images{
    //static let astonMartin = UIImage(named: "placeholder-150x150.png")!
}

let Top10List = [
    Top10ListItem(title:  Details.Zestiria.title, image: "Tales of Zestiria Cover.jpeg", details: Details.Zestiria),
    Top10ListItem(title:  Details.Berseria.title, image: "Tales of Berseria Cover.jpeg", details: Details.Berseria),
    Top10ListItem(title:  Details.Hat.title, image: "Hat in Time Cover.jpeg", details: Details.Hat),
    Top10ListItem(title:  Details.FF.title, image: "Final Fantasy 15 Cover.jpg", details: Details.FF),
    Top10ListItem(title:  Details.Bird.title, image: "A Bird Story Cover.png", details: Details.Bird),
    Top10ListItem(title:  Details.Paradise.title, image: "Finding Paradise Cover.jpeg", details: Details.Paradise),
    Top10ListItem(title:  Details.Octopath.title, image: "Octopath Traveler Cover.jpeg", details: Details.Octopath),
    Top10ListItem(title:  Details.Layton.title, image: "Professor Layton Cover.jpeg", details: Details.Layton),
    Top10ListItem(title:  Details.Sonic.title, image: "Sonic Forces Cover.jpeg", details: Details.Sonic),
    Top10ListItem(title:  Details.Kuni.title, image: "Ni No Kuni Cover.jpeg", details: Details.Kuni),
]

struct Details{
    //I was listening to this soundtrack whilst making this app
    static let Zestiria = DetailItem(title: "Tales of Zestiria", image: "Tales of Zestiria Game.jpeg", description: "The Tales of: series is more popular in Japan than the west. There is a lot of great orchestral and a few vocal tracks.")
    static let Berseria = DetailItem(title: "Tales of Berseria", image: "Tales of Berseria Game.jpeg", description: "The Tales of: series is more popular in Japan than the west. This game's soundtrack leans more heavily on rock than its predecessor")
    static let Hat = DetailItem(title: "A Hat in Time", image: "Hat in Time Game.jpeg", description: "This game's soundtrack was written by an EDM composer that does remixes on Youtube")
    static let FF = DetailItem(title: "Final Fantasy XV", image: "Final Fantasy 15 Game.jpeg", description: "The Final Fantasy series has always had a huge budget in Japan. This game has 5 hours of powerful orchestral music spanning multiple genres.")
    static let Bird = DetailItem(title: "A Bird Story", image: "A Bird Story Game.jpeg", description: "This is a niche indie game, but the composer, Kan Gao, always writes powerful soundtracks, on top of making the rest of the game by himself.")
    static let Paradise = DetailItem(title: "Finding Paradise", image: "Finding Paradise Game.jpeg", description: "This game is also made by Kan Gao as a one man studio. It Was more popular than A Bird Story was.")
    static let Octopath = DetailItem(title: "Octopath Traveler", image: "Octopath Traveler Game.jpeg", description: "Octopath Traveler, a JRPG, features mainly Middle East sounding orchestral music. Being a Japanese game, special attention was paid to the soundtrack.")
    static let Layton = DetailItem(title: "Professor Layton  and the Azran Legacy", image: "Professor Layton Game.jpg", description: "Fans of the Professor Layton series have always been a fan of it's music. Most of the soundtrack sounds distinctly British or French despite the Japanese composer.")
    static let Sonic = DetailItem(title: "Sonic Forces", image: "Sonic Forces Game.jpg", description: "Sonic forces departs the series' tradition of using a rock band, Crush 40, as the composers. This game insted has entirely edm music with multiple bands offering vocal tracks.")
    static let Kuni = DetailItem(title: "Ni No Kuni", image: "Ni No Kuni Game.png", description: "Ni No Kuni is a Japanese JRPG from the creators of Professor Layton and the most famous Japanese animated film studio, Studio Ghibli. The Ghibli composer, Joe Hisaishi did the music for the game too.")
}
