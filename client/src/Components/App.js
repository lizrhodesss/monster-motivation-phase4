import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import LoginForm from "./LoginForm"
import Home from "./Home"
import NavBar from "./NavBar"
import Resources from "./Resources"
import Signup from "./Signup"
import Quotes from "./Quotes"


function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  return (
    <>
      <NavBar />
  
      <main>
        <Switch>
        <Route exact path="/login">
        <LoginForm user={user} setUser={setUser}/>
          </Route>
          <Route exact path="/signup">
        <Signup user={user} setUser={setUser}/>
          </Route>
          <Route exact path="/">
            <Home user={user} setUser={setUser}/>
          </Route>
          <Route exact path="/resources">
            <Resources />
          </Route>
          <Route exact path="/quotes">
        <Quotes user={user} setUser={setUser}/>
          </Route>
        </Switch>
      </main>
    </>
    
  );
}

export default App;


