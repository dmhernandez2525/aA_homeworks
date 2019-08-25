import React from 'react';
import ReactDOM from 'react-dom';
import * as something from './util/api_util'
import * as actions from './actions/pokemon_actions'

window.RECEIVE_ALL_POKEMON = actions.RECEIVE_ALL_POKEMON
window.receiveAllPokemon = actions.receiveAllPokemon
window.fetchAllPokemon = something.fetchAllPokemon

document.addEventListener("DOMContentLoaded", () => {
    const rootEl = document.getElementById('root');
    ReactDOM.render(<h1>Pokedex</h1>, rootEl);
})