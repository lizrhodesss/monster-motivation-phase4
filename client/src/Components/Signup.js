 //none of this is working- giving 422 unprocessable entity

import React, { useState, useEffect } from "react"



function Signup ({ user, setUser }) {
    const [username, setUsername] = useState("")
    const [password, setPassword] = useState("")
    const [cohorts, setCohorts] = useState([])
    const [startDate, setStartDate] = useState("")
    // const [cohortId, setCohortId] = useState([])

function handleCohortChange(e){
    setStartDate(e.target.value)
}

    const handleSubmit = (e) => {
        e.preventDefault()
        // const pizza = {
        //     username,
        //     password
        // }
        //const randomSurvey = Math.floor(Math.random() * 1000);
        fetch("/signup", {
            method: "POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify({cohort_id: startDate, username: username, password: password, survey_form_id: 2 })
        })
            .then(resp => resp.json())
            .then(data => setUser(data))
    }
    useEffect(() => {
        fetch("/cohorts")
        .then((resp) => resp.json())
        .then(setCohorts)
    }, [])
        const cohortOptions = cohorts.map(cohort => {
            return <option value={cohort.id}>{cohort.start_date}</option>
        })

    return (
        <form onSubmit={handleSubmit}>
                <label htmlFor="username">Username</label>
                <input
                    type="text"
                    id="username"
                    autoComplete="off"
                    value={username}
                    onChange = {(e) => setUsername(e.target.value)}
                    />
                <label htmlFor="password">Password</label>
                <input
                    type="password"
                    id="password"
                    autoComplete="current-password"
                    value={password}
                    onChange = {(e) => setPassword(e.target.value)}
                />
                <select value={startDate}onChange={(e) => handleCohortChange(e)} >
                    <option>choose cohort</option>
                    {cohortOptions}
                </select>
                <button variant="fill" color="primary" type="submit">Sign Up
                </button>
        </form>
        
    )
}
export default Signup