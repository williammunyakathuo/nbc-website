
import { useNavigate } from "react-router-dom";

const About = () => {
    const navigate =  useNavigate()
    const handlenavigate = ()=>{
        navigate('/aboutus')
        
    }

   

    return (
        <div className="about">
            <div className="aboutWrapper">
                <div className="aboutOne">
                    <div className="aboutHeader">About Nyeri Baptist Church</div>
                </div>
                <div className="aboutDetails">
                <div className="aboutHeader2">About Nyeri Baptist Church</div>
                    <div className="coreValues">
                        <div className="subHeader">Our core values</div>
                        <ul>
                            <li>Lorem</li>
                            <li>Lorem</li>
                            <li>Lorem</li>
                        </ul>
                    </div>
                    <div className="vision">
                        <div className="subHeader">Our Vision</div>
                        <p>To know Jesus and make him known</p>
                    </div>
                    <div className="mission">
                        <div className="subHeader">Our Mission</div>
                        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sunt totam magnam, iusto similique quaerat qui! A eos non repellat ullam sequi distinctio dignissimos numquam qui, tempore enim aspernatur. Nostrum, odit.
                        </p>
                    </div>
                    <button onClick={handlenavigate}>Learn More ...</button>
                </div>
            </div>
        </div>
    );
}

export default About;