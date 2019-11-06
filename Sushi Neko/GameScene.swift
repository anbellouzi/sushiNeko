import SpriteKit

/* Tracking enum for use with character and sushi side */
enum Side {
    case left, right, none
}


class GameScene: SKScene {
    /* Game objects */
    var sushiBasePiece: SushiPiece!
    /* Cat Character */
    var character: Character!
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        /* Connect game objects */
        sushiBasePiece = (childNode(withName: "sushiBasePiece") as! SushiPiece)
        /* Connect game objects */
        character = childNode(withName: "character") as? Character
        
        /* Setup chopstick connections */
        sushiBasePiece.connectChopsticks()
    }
    
}
