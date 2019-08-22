import React from 'react';
import ReactDOM from 'react-dom';
import Board from './Board';
import Tile from './Tile';
import Game from './Game';

document.addEventListener("DOMContentLoaded", () => {

    
    const root = document.getElementById("root");
    ReactDOM.render(<Game/>, root);
});