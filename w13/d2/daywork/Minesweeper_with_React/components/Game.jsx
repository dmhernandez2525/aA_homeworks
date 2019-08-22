import React from 'react';
import Board from './Board';
import * as Minesweeper from './minesweeper';

class Game extends React.Component {
    constructor() {
        super();
        this.state = { board: new Minesweeper.Board(8,0)};
        this.updateGame = this.updateGame.bind(this);
        this.componentDidMount = this.componentDidMount.bind(this);

    }

    updateGame() {
        console.log("hello word from updateGame");
    }
// className="board
    componentDidMount() {

    }

    render() {
        return(
            <div >
            <Board board={this.state.board} update={this.updateGame} />
            </div>
        );
    }
}

// const Congrats = () => <h1>Congratulations, you did it!</h1>;

export default Game;