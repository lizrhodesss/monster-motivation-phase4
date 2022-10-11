
import React, {useState, useEffect } from 'react'
import EditForm from "./EditForm"

function QuoteCard({ handleDelete, quote }) {
    //const [quote, setQuote] = useState("")
    const [author, setAuthor] = useState("")
    const [showForm, setShowForm]  = useState(false)

// function handleDelete(quote){ 
//             fetch(`/quotes/${quote.id}`, {
//             method: "DELETE"
//         })
//         let filteredQuotes = quotes.filter(q => q.id !== quote.id)
//         setQuotes(filteredQuotes)
//     }

function handleShowForm() {
    setShowForm(!showForm)
}

    return (
        <div>
            <p>{quote.quote} -by {quote.author}</p>
            <button onClick={() => handleDelete(quote)}>delete that ho</button>
            <button onClick={handleShowForm}> edit </button>
            {showForm ? <EditForm currentQuote={quote}/> : null}
        </div>

         )
    }
    export default QuoteCard
