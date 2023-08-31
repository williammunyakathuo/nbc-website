import { useNavigate } from 'react-router-dom'
import study from '../../../assets/7.jpg'
import team from '../../../assets/teamwork.jpg'
const Study = () => {
    const navigate = useNavigate()
    const handleMinistries = ()=>{
        navigate('/ministries')
    }

    return ( 
        <div className="studies">
            <div className="study">
                <div className="studyImage">
                    <img src={study} alt="bible" />
                </div>
                <div className="studyDetails">
                    <div className="subHeader">Bible Studies</div>
                   <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos molestiae pariatur placeat deserunt voluptates officiis blanditiis. Voluptatibus possimus, assumenda odit accusantium, neque quod tempora nemo deserunt alias vitae at soluta.</p>
                    <button>Learn More ...</button>
                </div>
            </div>

            <div className="departLeadership">
                <div className="leadershipContent">
                    <div className="subHeader">
                        Church Departments and Leadership
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus ad itaque minus atque perferendis veritatis, explicabo quo reprehenderit sit in aliquam maxime facere aperiam nemo sint velit quidem repudiandae earum?
                    </p>
                    <button onClick={handleMinistries}>See our departments and leadership</button>

                </div>
                <div className="leadershipImage">
                    <img src={team} alt="leadership" />
                </div>
            </div>
            
            <div className="study">
                <div className="studyImage">
                    <img src={study} alt="bible" />
                </div>
                <div className="studyDetails">
                    <div className="subHeader">Sunctuary Construction</div>
                   <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos molestiae pariatur placeat deserunt voluptates officiis blanditiis. Voluptatibus possimus, assumenda odit accusantium, neque quod tempora nemo deserunt alias vitae at soluta.</p>
                    <button>Learn More ...</button>
                </div>
            </div>
            <div className="departLeadership">
                <div className="leadershipContent">
                    <div className="subHeader">
                        Tithes and offering
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus ad itaque minus atque perferendis veritatis, explicabo quo reprehenderit sit in aliquam maxime facere aperiam nemo sint velit quidem repudiandae earum?
                    </p>
                </div>
                <div className="leadershipImage">
                    <img src={team} alt="leadership" />
                </div>
            </div>
        </div>
     );
}
 
export default Study;