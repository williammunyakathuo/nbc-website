import { NavLink, useNavigate, useParams } from "react-router-dom";
import picture from '../../../assets/pastor.png'
import useFetch from "../../useFetch";
import axios from "axios";



const Onesermons = () => {

    const { id } = useParams()
    const sermonURL = `http://localhost:8050/onesermon/${id}`
    const deleteURL = `http://localhost:8050/sermon/${id}`
    const { sermon, isPending } = useFetch(sermonURL)
    const navigate = useNavigate()

    const handleDelete = () => {
        axios
            .delete(deleteURL)
            .then((response) => {
                console.log(response.data);
                navigate('/allsermons');
            })
            .catch((error) => {
                console.log(error);
            });
    }

    return (
        <div className="singleSermon">
            {isPending && <p>wait</p>}
            {sermon &&
                <div className="onesermon">

                    <div className="oneSermonDetails">
                        <div className="sermonImage">
                            <img src={picture} alt="sermon media" />
                        </div>
                        <div className="sermonIntro">
                            <div className="mainHeader">{sermon.title}</div>
                            <p>Series Name : {sermon.series_name}</p>
                            <p>Main Verse : {sermon.main_verse}</p>
                            <p>Precher :<b>{sermon.preacher}</b></p>
                            <p>Watch ther preaching here <a href={sermon.media_link}>{sermon.media_link}</a></p>
                            <div className="clickers">
                                <button>Edit</button>
                                <button onClick={handleDelete}>Delete</button>
                            </div>
                        </div>
                    </div>
                    <div className="sermonContent">
                        <p>{sermon.teaching}</p>
                    </div>

                </div>
            }
            <NavLink to='/allsermons'>See all Previous sermons</NavLink>


        </div>
    );
}

export default Onesermons;