import useFetch from '../../fetchSermons';
import placeholder from '../../../assets/pastor.png'
import { NavLink } from "react-router-dom";



const Sermons = () => {
    const sermonsURL = 'http://localhost:8050/sermons'

    const { sermons, isLoading } = useFetch(sermonsURL)

    return (
        <div className="sermonsArea">
            <center><div className="mainHeader"> Previous sermons</div></center>
            <div className="sermons">
                {isLoading && <p>Sermons Loading ...</p>}
                {sermons && sermons.map((sermon) => (

                    <div className="sermon" key={sermon.id}>
                        <NavLink to={`onesermon/${sermon.id}`} >
                            <div className="sermonVideo">
                                <img src={placeholder} alt="placeholder" />
                            </div>
                            <div className="sermonDetails">
                                <div className="mainHeader">{sermon.title}</div>
                                <div className="subHeader">{sermon.main_verse}</div>
                                <p>Series: {sermon.series_name}</p>
                                <p>Preacher: {sermon.preacher}</p>
                                <p>Video Link: {sermon.media_link}</p>
                            </div>
                        </NavLink>
                    </div>

                ))}
                <NavLink to='/allsermons'>See all Previous sermons</NavLink>
            </div>
        </div>
    );
}

export default Sermons;