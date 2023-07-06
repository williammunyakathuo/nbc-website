import axios, { Axios } from "axios";
import { useEffect, useState } from "react";
import placeholder from '../../../assets/pastor.png'

const sermonURL = 'http://localhost:8050/sermons'

const Sermons = () => {
    const [sermons, setSermons] = useState();

    useEffect(() => {
        const fetchSermons = async () => {
            try {
                const response = await axios.get(sermonURL)
                setSermons(response.data)
            } catch (error) {
                console.log(error)
            }
        }
        fetchSermons()
    }, [sermonURL])

    return (
        <div className="sermonsArea">
            <center><div className="mainHeader"> Previous sermons</div></center>
            <div className="sermons">

                {(sermons && sermons.map((sermon) => (
                    <div className="sermon" key={sermonURL.id}>
                        <div className="sermonVideo">
                            <img src={placeholder} alt="placeholder" />
                        </div>
                        <div className="sermonDetails">
                            <div className="mainHeader">{sermon.title}</div>
                            <div className="subHeader">{sermon.main_verse}</div>
                            <p>Series: {sermon.series_name}</p>
                            <p>Preacher: {sermon.preacher}</p>
                            <p>{sermon.teaching}</p>
                            <p>Video Link: {sermon.media_link}</p>
                        </div>

                    </div>
                ))) || <p>Sermons Loading</p>}
            </div>
        </div>
    );
}

export default Sermons;