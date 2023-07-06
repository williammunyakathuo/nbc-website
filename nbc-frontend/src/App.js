
import { Route, Routes } from 'react-router-dom';
import './App.css';
import Header from './header/Header';
import Home from './Pages/Home./Home';
import Aboutus from './Pages/Aboutus/Aboutus';
import Contacts from './Pages/Contacts/Contacts';
import Ministries from './Pages/Ministries/Ministries';

function App() {
  return (
    <div className="App">
      <Header/>
      <Routes>
        <Route path='/' element={<Home/>}></Route>
        <Route path='/aboutus' element={<Aboutus/>}></Route>
        <Route path='/contacts' element={<Contacts/>}></Route>
        <Route path='/ministries' element={<Ministries/>}></Route>
      </Routes>
    </div>
  );
}

export default App;
