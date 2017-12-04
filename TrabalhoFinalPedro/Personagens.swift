//
//  Personagens.swift
//  TrabalhoFinalPedro
//
//  Created by Aloc SP08120 on 02/12/2017.
//  Copyright © 2017 Aloc SP08120. All rights reserved.
//

import Foundation
import UIKit

enum Nacionalidade {
    case Brasil
    case EUA
    case China
    case India
    case Russia
    case Japao
    case Desconhecido
}
enum Golpe : String {
    //ken e ryu
    case Hadouken = " baixo até frente + soco"
    case Shoryuken = "frente, baixo, frente + soco"
    case HurricaneKick = " baixo, diagonal inferior trás, trás + chute"
    
    //blanka
    case ElectricThunder = "aperte soco varias e repetidas vezes"
    case RollingAttack = "segure trás e solte apertando pra frente + soco"
    case VerticalRolling = "segure baixo e solte pra cima + chute"
    
    //chunli
    case SankakuTobi = " pule contra o canto da parede e aperte na direção oposta "
    case YousouKyaku = "no ar, baixo + chute médio"
    case KakuKyakuRaku =  "no ar, diagonal inferior frente + chute alto"
    
    //dhalsin
    case DrillZutsuki = "no ar, baixo + soco forte"
    case DrillKick = "no ar, baixo + qualquer chute"
    case YogaFire = "baixo, frente + soco"
    case YogaFlame = "trás, baixo, frente + soco"
    case YogaBlast = "trás, baixo, frente + chute"
    
    //balrog
    case DashStraight = "Segure pra trás, solte pra frente + soco"
    case DashUpper = "Segure pra trás, solte pra frente + chute"
    case TurnPunch = "Segure os 3 de soco, ou os 3 de chute por alguns instantes e solte"
    case BuffaloHeadbutt = "Segure pra baixo, solte pra cima + soco"
    
    //akuma
    case GouHadouken = "baixo, frente + soco "
    case ZankuuHadouken = "(no ar) baixo, frente + soco"
    case ShakunetsuHadouken = "meia lua no controle de trás pra frente (ou trás, baixo, frente, incluindo as diagonais do direcional, se houverem) + soco"
    case GouShoryuken = "frente, baixo, frente + soco  "
    
    //zangief
    case FlyingBodyAttack = "no ar, baixo + soco forte  "
    case DoubleKneeDrop = "no ar, baixo + chute fraco ou médio"
    case DoubleLariat = "os três botões de soco"
    case QuickLariat = "os três botões de chute"
    
    case Nenhum = "Nenhum"
}



class Personagens { 
    var name = ""
    var nacionalidade : Nacionalidade
    var golpes: [Golpe]
    init(name :  String) {
        self.name = name
        self.nacionalidade = Nacionalidade.Desconhecido
        self.golpes = [Golpe.Nenhum]
        atribuiGolpe(jogador: self)
        atribuiNacionalidade(jogador: self)
        
    }

    
    private func atribuiGolpe(jogador : Personagens){
        switch jogador.name {
        case "ryu","ken":
            jogador.golpes = [Golpe.Hadouken, Golpe.Shoryuken, Golpe.HurricaneKick]
        case "chunli":
            jogador.golpes = [Golpe.SankakuTobi, Golpe.YousouKyaku, Golpe.KakuKyakuRaku]
        case "blanka" :
            jogador.golpes = [Golpe.ElectricThunder, Golpe.RollingAttack, Golpe.VerticalRolling]
        case "dalsin":
            jogador.golpes = [ Golpe.DrillKick, Golpe.DrillZutsuki, Golpe.YogaFire, Golpe.YogaFlame, Golpe.YogaBlast]
        case "balrog":
            jogador.golpes = [Golpe.DashStraight, Golpe.DashUpper, Golpe.TurnPunch, Golpe.BuffaloHeadbutt]
        case "akuma":
            jogador.golpes = [Golpe.GouHadouken, Golpe.ZankuuHadouken, Golpe.ShakunetsuHadouken, Golpe.GouShoryuken ]
        case "zangief":
            jogador.golpes = [Golpe.FlyingBodyAttack, Golpe.DoubleKneeDrop, Golpe.DoubleLariat, Golpe.QuickLariat]
        default:
            jogador.golpes = [Golpe.Nenhum]
        }
    }
    
    func atribuiNacionalidade(jogador : Personagens)  {
            switch jogador.name {
            case "ryu", "akuma":
                jogador.nacionalidade = Nacionalidade.Japao
            case "ken", "balrog":
                jogador.nacionalidade = Nacionalidade.EUA
            case "chunli":
                jogador.nacionalidade = Nacionalidade.China
            case "blanka":
                jogador.nacionalidade = Nacionalidade.Brasil
            case "dalsin":
                jogador.nacionalidade = Nacionalidade.India
            case "zangief":
                jogador.nacionalidade = Nacionalidade.Russia
            default:
                jogador.nacionalidade = Nacionalidade.Desconhecido
            }
    }
}

extension Personagens {
    func toArray() -> [String] {
        var items = [String]()
        items.append("\(self.name) - \(self.nacionalidade)")
        for golpe in self.golpes
        {
            items.append("\(golpe) - \(golpe.rawValue)")
        }
        
        return items
    }
}



