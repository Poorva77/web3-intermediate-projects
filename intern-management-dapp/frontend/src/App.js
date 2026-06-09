import { useState } from "react";
import axios from "axios";

function App() {

  const [name, setName] = useState("");
  const [wallet, setWallet] = useState("");

  const registerIntern = async () => {

    await axios.post(
      "http://localhost:5000/register",
      {
        name,
        wallet
      }
    );

    alert("Intern Registered");
  };

  const connectWallet = async () => {

    if(window.ethereum){

      const accounts =
        await window.ethereum.request({
          method: "eth_requestAccounts"
        });

      setWallet(accounts[0]);
    }
  };

  return (
    <div style={{ padding: "20px" }}>

      <h1>Intern Management Web3 App</h1>

      <button onClick={connectWallet}>
        Connect MetaMask
      </button>

      <p>
        Wallet: {wallet}
      </p>

      <br />

      <input
        placeholder="Intern Name"
        onChange={(e)=>setName(e.target.value)}
      />

      <br /><br />

      <button onClick={registerIntern}>
        Register Intern
      </button>

    </div>
  );
}

export default App;