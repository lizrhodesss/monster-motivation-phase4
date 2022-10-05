// none of this is working

//import React, { useState } from "react"



// function Signup ({ user, setUser }) {
//     const [username, setUsername] = useState("")
//     const [password, setPassword] = useState("")



//     const handleSubmit = (e) => {
//         e.preventDefault()
//         const user = {
//             username,
//             password
//         }
//         fetch("/signup", {
//             method: "POST",
//             headers: {"Content-Type" : "application/json"},
//             body: JSON.stringify(user)
//         })
//             .then(resp => resp.json())
//             .then(data => setUser(data))
//     }
//     return (
//         <form onSubmit={handleSubmit}>
//                 <label htmlFor="username">Username</label>
//                 <input
//                     type="text"
//                     id="username"
//                     autoComplete="off"
//                     value={username}
//                     onChange = {(e) => setUsername(e.target.value)}
//                     />
//                 <label htmlFor="password">Password</label>
//                 <input
//                     type="password"
//                     id="password"
//                     autoComplete="current-password"
//                     value={password}
//                     onChange = {(e) => setPassword(e.target.value)}
//                 />
//                 <button variant="fill" color="primary" type="submit">Login
//                 </button>
//         </form>
        
//     )
// }
// export default Signup