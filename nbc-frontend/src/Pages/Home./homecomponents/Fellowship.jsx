import axios from "axios";
import { useEffect, useState } from "react";
const fellowshipURL = 'http://localhost:8050/fellowships'

const Fellowship = () => {
    const [fellowships, setFellowship] = useState()
    const [isPending, setIsPending] = useState(true)

    useEffect(() => {
        const fetchFellowship = async () => {
            try {
                const results = await axios.get(fellowshipURL)
                setFellowship(results.data)
                setIsPending(false)
            } catch (error) {
                console.log(error)
            }
        }
        fetchFellowship()
    }, [])

    return (
        <div className="fellowships">
            <div className="fellowshipFull">
                <div className="partOne">
                    {isPending && <p> Fellowships Loading ....</p>}
                    {
                        fellowships && fellowships.map((fellowship) => (
                            <div className="fellowship" key={fellowship.FellowshipID}>
                                <div className="subHeader">{fellowship.fellowship_name}</div>
                                <p>Venue :{fellowship.fellowship_location}</p>
                                <p>On : {fellowship.fellowship_description} weekly</p>
                                {/* <b>at : {fellowship.Time}</b>
                                <p>Liason : {fellowship.Leader}</p> */}
                                <hr></hr>
                            </div>
                        ))
                    }
                    <button>View all fellowships</button>
                </div>
                <div className="partTwo">
                    <div className="subHeader"> Communicate with us (send us a message)</div>
                    <form action="">
                        <label htmlFor="name" >Full Name:</label><br />
                        <input type="text" placeholder="Full name" /><br />
                        <label htmlFor="phone" >Phone Number:</label><br />
                        <input type="number" placeholder="Phone number" /><br />
                        <label htmlFor="email" >Email Address:</label><br />
                        <input type="email" placeholder="Email here" /><br />
                        <label htmlFor="message" >Message:</label><br />
                        <textarea id="message" placeholder="Write to us" name="message" rows="5" cols="40"></textarea>
                        <br /><button>Send Email</button>
                    </form>
                </div>
            </div>
        </div>
    );
}

export default Fellowship;