import mission from '../../../assets/slideshow/miision.jpg'
import team from '../../../assets/slideshow/missionteam.jpg'
import congregation from '../../../assets/slideshow/congragation.jpg'

const Testimonies = () => {
    return (
        <div className="testimonies">
            <div className="gallery">
                <div className="oneImage">
                    <div className="images">
                        <img src={mission} alt="gallery" />
                    </div>
                </div>
                <div className="oneImage">
                    <div className="images">
                        <img src={team} alt="gallery" />
                    </div>
                </div>
                <div className="oneImage">
                    <div className="images">
                        <img src={congregation} alt="gallery" />
                    </div>
                </div>
                <div className="oneImage">
                    <div className="images">
                        <img src={mission} alt="gallery" />
                    </div>
                </div>
                <div className="oneImage">
                    <div className="images">
                        <img src={team} alt="gallery" />
                    </div>
                </div>
                <div className="oneImage">
                    <div className="images">
                        <img src={congregation} alt="gallery" />
                    </div>
                </div>
            </div>
            <button>View More ...</button>

        </div>
    );
}

export default Testimonies;