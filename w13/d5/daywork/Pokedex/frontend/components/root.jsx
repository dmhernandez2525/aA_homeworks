import React from 'react';
import { Provider } from 'react-redux';
import Pokemon_index_contaner from "./pokemon_index_container"

const Root = ({ store }) => (
  <Provider store={store}>
    <div>Hello, world!</div>
    <Pokemon_index_contaner/>
  </Provider>
);

export default Root;