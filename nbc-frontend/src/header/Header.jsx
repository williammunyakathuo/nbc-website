import { NavLink } from 'react-router-dom';
import './header.css'
import { useState } from 'react';
import logo from '../assets/logo.jpg'
import Mobile from './headerComponents/Mobile';

const Header = () => {

    const [isActive, setIsActive] = useState(false);
    const [isMobile, setIsMobile] = useState(false);

    const changeBurger = () => {
        setIsActive(!isActive);
        setIsMobile(!isMobile)
    };
    return (
        <div className="header">
            <div className="topNav">
                <div className="churchLogo">
                    <img src={logo} alt="logo comes here" />
                </div>
                <div className="navName">
                    <div className='mainHeader'>Nyeri Baptist Church</div>
                </div>
                <div className="shortName">
                    <h2>N.B.C</h2>
                </div>
                <div className='navLinks'>
                    <NavLink to='/'>Home</NavLink>
                    <NavLink to='/aboutus'>About Us</NavLink>
                    <NavLink to='/ministries'>Our Ministries</NavLink>
                    <NavLink to='/contacts'>Our Contacts</NavLink>

                </div>
                <button className={`hamburger ${isActive ? 'is-active' : ''}`} onClick={changeBurger}>
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
            <div className={`someLinks ${isMobile ? 'mobileNav' : ''}`}>
                <Mobile />
            </div>
           

        </div>
    );
}

export default Header;