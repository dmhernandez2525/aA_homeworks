import React from 'react';
import ReactDOM from 'react-dom';
import Clock from './clock';
import Tabs from './tabs';

document.addEventListener('DOMContentLoaded', function () {
    // const root = document.getElementById("root");
    const object = [
        {title: 'one', body: 'I am the first' },
        {title: 'two', body: 'I am the second' },
        {title: 'three', body: 'I am the third' },
    ];

    function Root() {
        return (
            <div>
                <Clock />
                <Tabs panes={object} />
            </div>
        );
    }
    ReactDOM.render(<Root />, document.getElementById('root'));

  






});
