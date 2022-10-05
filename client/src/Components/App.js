import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import LoginForm from "./LoginForm"
// import Home from "./Home"
import NavBar from "./NavBar"


function App() {
  const [user, setUser] = useState(null);

  
  // useEffect(() => {
  //   // auto-login
  //   fetch("/me").then((r) => {
  //     if (r.ok) {
  //       r.json().then((user) => {
  //         setUser(user)
      
  //       });
  //     }
  //   });
  // }, []);
  

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
        <LoginForm user={user} setUser={setUser}/>
          </Route>
          <Route exact path="/new">
            {/* <Component /> */}
          </Route>
          <Route exact path="/">
            {/* <Component /> */}
          </Route>
        </Switch>
      </main>
    </>
    
  );
}

export default App;



{/* <BrowserRouter>
    <div className="App">
    <NavBar/ >
    <Login user = {user} setUser={setUser}/>
     <Switch>
        <Route exact path="/quotes">
          <h1>Quotes</h1>
        </Route>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/resources">
          <h1>Resources</h1> 
          //make these components
          </Route>
      </Switch>
    </div>
  </BrowserRouter> */}