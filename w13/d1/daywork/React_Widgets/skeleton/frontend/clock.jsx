import React from 'react';

class Clock extends React.Component{
    constructor() {
        super();
        this.state = { time: new Date() };
        this.tick = this.tick.bind(this);
    }
    componentDidMount(){
        this.intervalId = setInterval(this.tick,1000);
    }
    // componentWillUnmount
    tick() {
        this.setState({time: new Date()});
    }

    render(){
        const time = this.state.time;
        const minutes = time.getMinutes();
        const hours = time.getHours();
        const seconds = time.getSeconds();
        
        const fullDate = time.toDateString();
        
        return (
            <div className="clock-container">
                <h1> DA best clock ever</h1>
                    <div>
                    <div className="wrapper">
                        <h2 className="date"> Date: </h2>
                        <h2 className="date"> {fullDate}</h2>
                    </div>
                    <div className="wrapper">
                        <h2 className="time"> Time: </h2>
                        <h2 className="time">{hours}:{minutes}:{seconds}</h2>
                    </div>
                </div>
            </div>
        
        );
    }
}


export default Clock;