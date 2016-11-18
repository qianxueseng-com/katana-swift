//
//  OpenPost.swift
//  HackerNewsClient
//
//  Copyright © 2016 Bending Spoons.
//  Distributed under the MIT License.
//  See the LICENSE file for more information.

import Katana

struct OpenPost: SyncAction {
    
    typealias Payload = URL
    
    var payload: URL
    
    init(payload: Payload) {
        self.payload = payload
    }
    
    static func updatedState(currentState: State, action: OpenPost) -> State {
        var newState = currentState as! HackerNewsState
        newState.openPostURL = action.payload
        return newState
    }
}