import team from '../../../assets/teamwork.jpg'
const Leadership = () => {
    
    return (
        <div className="leadership">
            <div className="departLeadership">
                <div className="leadershipContent">
                    <div className="subHeader">
                        Church Departments and Leadership
                    </div>
                    <p>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus ad itaque minus atque perferendis veritatis, explicabo quo reprehenderit sit in aliquam maxime facere aperiam nemo sint velit quidem repudiandae earum?
                    </p>
                    <button>See our departments and leadership</button>

                </div>
                <div className="leadershipImage">
                    <img src={team} alt="leadership" />
                </div>
            </div>
        </div>
    );
}

export default Leadership;