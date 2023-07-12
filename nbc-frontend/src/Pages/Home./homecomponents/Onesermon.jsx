import { NavLink, useNavigate, useParams } from "react-router-dom";
import picture from '../../../assets/pastor.png'
import useFetch from "../../useFetch";
import axios from "axios";
import { useEffect, useState } from "react";



const Onesermons = () => {

    const { id } = useParams()
    const sermonURL = `http://localhost:8050/onesermon/${id}`
    const deleteURL = `http://localhost:8050/sermon/${id}`
    const { sermon, isPending } = useFetch(sermonURL)
    const navigate = useNavigate()
    const editURL = 'http://localhost:8050/sermon'
    const [isEditing, setIsEditing] = useState(false)

    const [editedSermon, setEditedSermon] = useState()

    useEffect(() => {
        if (sermon) {
            setEditedSermon({
                id: `${sermon.id}`,
                date_preached: `${sermon.date_preached}`,
                preacher: `${sermon.preacher}`,
                title: `${sermon.title}`,
                main_verse: `${sermon.main_verse}`,
                teaching: `${sermon.teaching}`,
                duration_minutes: `${sermon.duration_minutes}`,
                series_name: `${sermon.series_name}`,
                location: `${sermon.location}`,
                media_link: `${sermon.media_link}`,
            })
        }
    }, [sermon])

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

    // const handleInputChange = (e) => {
    //     const { name, value } = e.target;
    //     setEditedSermon(prevFormData => {
    //         const updatedSermon = { ...prevFormData };
    //         updatedSermon[name] = value;
    //         return updatedSermon;
    //     });
    // };


    const handleSubmit = (e) => {
        e.preventDefault();
        axios
            .put(editURL, editedSermon, {
                headers: {
                    'Content-Type': 'application/json',
                },
            })
            .then((response) => {
                setIsEditing(true)
                navigate(`http://localhost:8050/onesermon/${editedSermon.id}`)
                console.log(response.data)
            })
            .catch((error) => {
                console.log(error)
            })
    }

    const handleEdit = () => {
        setIsEditing(!isEditing)
    }

    return (
        <div className="singleSermon">
            {isPending && <p>wait</p>}

            {isEditing && <form onSubmit={handleSubmit} className="editing form">
                <label htmlFor="date">Date</label>
                <input
                    type="date"
                    name="date_preached"
                    value={editedSermon.date_preached}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="preacher">Preacher</label>
                <input
                    type="text"
                    name="preacher"
                    value={sermon.preacher}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="title">Title</label>
                <input
                    type="text"
                    name="title"
                    value={editedSermon.title}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="main_verse">Main verse</label>
                <input
                    type="text"
                    name="main_verse"
                    value={editedSermon.main_verse}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="main_verse">Main verse</label>
                <input
                    type="text"
                    name="main_verse"
                    value={editedSermon.main_verse}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="teaching">Teaching</label>
                <input
                    type="text"
                    name="teaching"
                    value={editedSermon.teaching}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="duration">Time Taken</label>
                <input
                    type="number"
                    name="duration_minutes"
                    value={editedSermon.duration_minutes}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="series">Series name</label>
                <input
                    type="text"
                    name="series_name"
                    value={editedSermon.series_name}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="location">Venue</label>
                <input
                    type="text"
                    name="location"
                    value={editedSermon.location}
                    required
                    // onChange={handleInputChange}
                />
                <label htmlFor="media_link">Media Link</label>
                <input
                    type="text"
                    name="media_link"
                    value={editedSermon.media_link}
                    required
                    // onChange={handleInputChange}
                />
                <button type="submit">Submit</button>
            </form>}


            {sermon &&
                <div className="onesermon">

                    <div className="oneSermonDetails">
                        <div className="sermonImage">
                            <img src={picture} alt="sermon media" />
                        </div>
                        <div className="sermonIntro" >
                            <div className="mainHeader"  >{sermon.title}</div>
                            <p>Series Name : {sermon.series_name}</p>
                            <p>Main Verse : {sermon.main_verse}</p>
                            <p>Precher :<b>{sermon.preacher}</b></p>
                            <p>Watch ther preaching here <a href={sermon.media_link}>{sermon.media_link}</a></p>
                            <div className="clickers">
                                <button onClick={handleEdit}>Edit</button>
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