//need to add form to submit resources
    //bonus-->allow user to favorite resources


import React, { useEffect, useState } from 'react'


function Resources() {
    const [techToggle, setTechToggle] = useState(true)
    const [nonTechResources, setNonTechResources] = useState([])
    const [techResources, setTechResources] = useState([])
   

    const handleToggle = (e) => {
        setTechToggle(techToggle => !techToggle)
    }

    useEffect(() => {
    fetch("/non_tech_resources")
    .then((resp) => resp.json())
    .then(setNonTechResources)
}, [])
    
useEffect(() => {
    fetch("/tech_resources")
    .then((resp) => resp.json())
    .then(setTechResources)
}, [])

 const nonTechToShow = nonTechResources.map(ntr => {
    return <li><a href={ntr.url} >{ntr.title}</a></li>
 })
 const techToShow = techResources.map(tr => {
    return <li><a href={tr.url} >{tr.title}</a></li>
 })
    return (
        <div>
        {techToggle ? (
            <button onClick={handleToggle} className="techToggle">Technical Resources</button>
           
        ) : (
            <button onClick={handleToggle} className="techToggle">Non Technical Resources</button>    
        
        )}
       {techToggle ?  nonTechToShow : techToShow }
        </div>
    )
}

export default Resources