
import { Route, Routes } from 'react-router-dom';
import './App.css';
import Header from './header/Header';
import Home from './Pages/Home./Home';
import Aboutus from './Pages/Aboutus/Aboutus';
import Contacts from './Pages/Contacts/Contacts';
import Ministries from './Pages/Ministries/Ministries';
import Footer from './Footer/Footer';
import Onesermons from './Pages/Home./homecomponents/Onesermon';
import Allsermons from './Pages/Home./homecomponents/Allsermons';
import OneEvent from './Pages/Home./homecomponents/Oneevent';
import Allevents from './Pages/Home./homecomponents/Allevents';

function App() {
  return (
    <div className="App">
      <Header />
      <Routes>
        <Route path='/' element={<Home />}></Route>
        <Route path='/aboutus' element={<Aboutus />}></Route>
        <Route path='/contacts' element={<Contacts />}></Route>
        <Route path='/ministries' element={<Ministries />}></Route>
        <Route path='/onesermon/:id' element={<Onesermons />}></Route>
        <Route path='/allsermons' element={<Allsermons />}>
          <Route path='onesermon/:id' element={<Onesermons />}></Route>
        </Route>
        <Route path='/oneevent/:id' element={<OneEvent/>}></Route>
        <Route path='/events' element={<Allevents/>}></Route>
      </Routes>
      <Footer />
    </div>
  );
}

export default App;
