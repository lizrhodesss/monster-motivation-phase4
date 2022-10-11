import React, {useState, useEffect } from 'react'



function EditForm({currentQuote}) {
    const [quote, setQuote] = useState("")
    const [author, setAuthor]= useState("")

    function handleQuoteChange(e) {
        e.preventDefault()

            fetch(`/quotes/${currentQuote.id}`, {
                method: "PATCH",
                headers: {"Content-Type" : "application/json"},
                body: JSON.stringify({quote: quote, author: author})
            }
        )
    }

            

return (
    <div>
    <form onSubmit={handleQuoteChange}>
        <label  htmlFor="quote">Updated Quote:</label>
        <input 
        type="text"
        onChange = {(e) => setQuote(e.target.value)}
        value={quote}
        />
        <label  htmlFor="author">updated author: </label>
        <input 
        type="text"
        onChange = {(e) => setAuthor(e.target.value)}
        value={author}
        />
        <button type="submit">submit edit</button>
        
    </form>
    </div>

     )
}

export default EditForm