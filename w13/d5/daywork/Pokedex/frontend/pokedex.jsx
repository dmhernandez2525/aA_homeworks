import React from 'react';
import ReactDOM from 'react-dom';
import * as something from './util/api_util';
import * as actions from './actions/pokemon_actions';
import configureStore from './store/store';
import {selectAllPokemon} from './reducers/selectors';
import Root from './components/root';

// window.RECEIVE_ALL_POKEMON = actions.RECEIVE_ALL_POKEMON
// window.receiveAllPokemon = actions.receiveAllPokemon
// window.requestAllPokemon = actions.requestAllPokemon
// window.fetchAllPokemon = something.fetchAllPokemon
// window.selectAllPokemon = selectAllPokemon

document.addEventListener("DOMContentLoaded", () => {
    const rootEl = document.getElementById('root');
    const store = configureStore()

    window.getState = store.getState;
    window.dispatch = store.dispatch;

    ReactDOM.render(<Root store={store}/>, rootEl);
})