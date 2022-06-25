//
//  Model.swift
//  ColorUserDefaults
//
//  Created by Ambroise COLLON on 08/10/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import Foundation

final class Image {

    // MARK: - Private

    enum Keys {
        static let imageKey = "imageKey"
    }

    // MARK: - Public

    var selected: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.imageKey) ?? "Default"
        }
        set { UserDefaults.standard.set(newValue, forKey: Keys.imageKey)

            // FIXME écrire la ligne pour sauver le choix de couleur dans le UserDefaults pour la clé colorKey (comme plus haut).
        }
    }
}
