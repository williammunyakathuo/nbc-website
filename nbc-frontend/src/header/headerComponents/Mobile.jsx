import { useState } from "react";
import { NavLink } from "react-router-dom";

const Mobile = () => {
    const [isMobile, setIsMobile] = useState(false);
    const change =()=>{
        setIsMobile(!isMobile)
    }
    return (
        <div className="mobile">
            <NavLink to='/' onClick={change}>Home</NavLink>
            <NavLink to='/aboutus'>About Us</NavLink>
            <NavLink to='/ministries'>Our Ministries</NavLink>
            <NavLink to='/contacts'>Our Contacts</NavLink>
            
        </div>
    );
}

export default Mobile;