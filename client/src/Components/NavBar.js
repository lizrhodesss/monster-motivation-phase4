import React from 'react'
import { NavLink } from 'react-router-dom';

    function NavBar({ user, setUser }) {
        function handleLogoutClick() {
            fetch("/logout", {
                method: "DELETE" })
                .then((resp) => {
                    if (resp.ok) {
                    setUser(null)
            }
        })
    }
    return (
        <nav>
            <NavLink exact to="/">
            Home
            </NavLink>
            <NavLink exact to="/signup">
               Signup
               </NavLink>
            <NavLink exact to="/quotes">
                Quotes
            </NavLink>
            <NavLink exact to="/login">
               Login
               </NavLink>
            <NavLink exact to="/logout">
               Logout
            </NavLink>
            <NavLink exact to="/resources">
                Resources
            </NavLink>
            
        </nav>
    )
}

export default NavBar;