import "./App.css";

function App() {
  const envValue = import.meta.env.VITE_APP_ENV;

  return <h1>Env variable is {envValue}</h1>;
}

export default App;
