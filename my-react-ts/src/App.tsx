import './App.css'

function App() {

        console.log('foi');

  return (
    <div className="App">
      <h1>Vite + React</h1>
      <div className="card">
        <p>
          Is your <code>.env</code> file correctly set? {process.env.REACT_APP_TEST ? process.env.REACT_APP_TEST : 'NO'}
        </p>
      </div>
    </div>
  )
}

export default App
