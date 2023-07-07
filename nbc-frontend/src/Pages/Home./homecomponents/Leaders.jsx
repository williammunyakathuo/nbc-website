import axios from "axios";
import { useEffect, useState } from "react";
const leadersURL = 'http://localhost:8050/leaders'


const Leaders = () => {
    const [leaders, setLeaders] = useState()

    useEffect(() => {
        const fetchLeaders = async () => {
            try {
                const response = await axios.get(leadersURL);
                setLeaders(response.data)
            } catch (error) {
                console.log(error)
            }
        }
        fetchLeaders()
    }, [])

    return ( 
        <div className="leaders">
            {(leaders && leaders.map((leader) => (
                <div className="leader" key={leader.leaderID}>
                    <div className="leaderImage">
                        <img src="" alt="" />
                    </div>
                    <div className="leaderDetails">
                        <p><b>{leader.fullName}</b><br />
                            {leader.position}</p>
                        <p>
                            "{leader.favoriteQuote}"
                        </p>

                    </div>

                </div>
            )))}
        </div>
     );
}
 
export default Leaders;