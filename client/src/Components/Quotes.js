

import React, {useState, useEffect } from 'react'
import QuoteCard from "./QuoteCard"

function Quotes({ user, setUser }) {
    const [quotes, setQuotes] = useState([])
    const [quote, setQuote] = useState("")
    const [author, setAuthor]= useState("")


    useEffect(() => {
        fetch("/quotes")
        .then((resp) => resp.json())
        .then(data => setQuotes(data))
    }, [])


function handleNewQuote(e){
  e.preventDefault()
    
        fetch("/quotes", {
            method: "POST",
            headers: {"Content-Type" : "application/json"},
            body: JSON.stringify({quote: quote, author: author})
        })
        .then(resp => resp.json())
        .then(data => setQuotes([...quotes, data]))
    }

       
        
function handleUpdate() {
            fetch(`/quotes/${quote.id}`, {
                method: "PATCH",
                headers: {"Content-Type" : "application/json"},
                body: JSON.stringify({quote: quotes, author: author})
            }


        )}
            
function quotesToShow() {
        return quotes.map(quote => {
        return <QuoteCard handleDelete={handleDelete} quote={quote}/>
            })
            }

function handleDelete(quote){ 
            fetch(`/quotes/${quote.id}`, {
            method: "DELETE"
        })
        let filteredQuotes = quotes.filter(q => q.id !== quote.id)
        setQuotes(filteredQuotes)
    }

    return (
        <div>
            <h1>Quotes by smart people to give you the warm fuzzies.</h1>
        <form onSubmit={handleNewQuote}>
            <label  htmlFor="quote">Quote:</label>
            <input 
            type="text"
            onChange = {(e) => setQuote(e.target.value)}
            value={quote}
            />
            <label  htmlFor="author">Who said it?</label>
            <input 
            type="text"
            onChange = {(e) => setAuthor(e.target.value)}
            value={author}
            />
            <button type="submit">Submit</button>
            
        </form>
            {quotes != null ? quotesToShow() : null}
        </div>

         )
    }
    export default Quotes
