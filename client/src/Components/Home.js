//i would like for the login and signup options to come from the Home component not from LoginForm. 

//i want to see monsters on Home that allows user to interact and receive randomly generated quotes (click, mouse over ect)

//bonus-->logged in user can view their favorite  quotes and resources here


import React, {useState, useEffect } from 'react'

function Home({ user, setUser }) {
    const [formName, setFormName] = useState("") 
    const [learnedToday, setLearnedToday] = useState([])
    const [feedback, setFeedback] = useState("")
    const [feelingCheck, setFeelingCheck] = useState("")


    function handleFeelingCheck(e){
        setFeelingCheck(e.target.value)
    }

    const handleFormSubmit = (e) => {
        e.preventDefault()
        
        fetch("/survey_forms", {
            method: "POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify({name: formName, learned_Today: learnedToday, feedback: feedback, feeling_check: feelingCheck})
        })
            .then(resp => resp.json())
            .then(data => setUser(data))

            // e.target.reset()
                //if theres time i want to clear input after submission
    }



    return (
        <div>
            <h1>Tell us about your day.</h1>
        <form onSubmit={handleFormSubmit}>
            <label  htmlFor="name">Name:</label>
            <input 
            type="text"
            onChange = {(e) => setFormName(e.target.value)}
            value={formName}
            />
            <label  htmlFor="learned_today">What did you learn today?:</label>
            <input 
            type="text"
            onChange = {(e) => setLearnedToday(e.target.value)}
            value={learnedToday}
            />
            <label  htmlFor="feedback">Feedback: What's working? Where can we grow?:</label>
            <input 
            type="text"
            onChange = {(e) => setFeedback(e.target.value)}
            value={feedback}
            />
            <select value={feelingCheck}onChange={(e) => handleFeelingCheck(e)} >
                    <option>How are you feeling?</option>
                    <option value={1}>ONE- I'm deep in the swamp</option>
                    <option value={2}>TWO- I'm trying, but throw me a rope</option>
                    <option value={3}>THREE- My heads above water</option>
                    <option value={4}>FOUR- I'm gonna make it up this hill</option>
                    <option value={5}>FIVE- I'm kicking ass and takin names, bugs be gone!</option>
            </select>
            <button variant="fill" color="primary" type="submit">Submit</button>
        </form>
       </div>
    )
}
export default Home






