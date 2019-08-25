import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import fetchSearchGiphys from './util/api_util';
import * as all from './actions/giphy_actions'

const store = configureStore();
window.fetchSearchGiphys = fetchSearchGiphys
window.store = store;
window.receiveSearchGiphys = all.receiveSearchGiphys;


document.addEventListener('DOMContentLoaded', (store) => {


});