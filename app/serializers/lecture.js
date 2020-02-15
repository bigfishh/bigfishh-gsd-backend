import React from 'react';
//npm i redux 
import {createStore} from 'redux';


export default function (){

}

//store is a function functionfunction stores the state and has functions 

const store = createStore(reducer)
console.log()


const action = {
    type: 'INCREMENT'
}

const action = {
    type: 'DECREMENT'
}

function reducer(state = 0, action){
    if (action.type === 'INCREMENT'){
        return state + 1;
    } else if (action.type === 'DECREMENT'){
        return state - 1;
    }
    return state;
}