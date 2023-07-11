import axios from "axios";
import { useEffect, useState } from "react";
const eventsURL = 'http://localhost:8050/events'
const announceURL = 'http://localhost:8050/announcements'

const Events = () => {

    const [events, setEvents] = useState()
    const [announcments, setAnnouncments] = useState()

    useEffect(() => {
        const fetchEvents = async () => {
            try {
                const response = await axios.get(eventsURL)
                setEvents(response.data)
            } catch (error) {
                console.error('error fetching data:', error)
            }
        }

        fetchEvents()
    }, [eventsURL])

    useEffect(() => {
        const fetchAnnouncment = async () => {
            try {
                const response = await axios.get(announceURL)
                setAnnouncments(response.data)
            } catch (error) {
                console.error('error fetching data:', error)
            }
        }

        fetchAnnouncment()
    }, [])


   

    return (
        <div className="eventsAnnonce">
            <div className="events">
                <div className="mainHeader">UPCOMING EVENTS</div>
                {(events && events.map((event) => (
                    <div key={event.EventID} className="event">
                        <div className="eventDate">{event.EventDate}</div>
                        <div className="eventDetails">
                            <div className="subHeader">{event.EventName}</div>
                            <p><b>The venue will be at :{event.Location}</b></p>
                            <p>Organized by:{event.Organizer}</p>
                        </div>
                    </div>)
                )) || <p>Events loading</p>}
            </div>
            <div className="events churchAnnouncments">
                <div className="mainHeader">Latest Church Announcments</div>
                {(announcments && announcments.map((announcment) => (
                    
                        <div key={announcment.AnnouncementID} className="annoncment">
                            <div className="subHeader">{announcment.Title}</div>
                            <p>Announcment: {announcment.Content}</p>
                            <p>For:{announcment.MinistryConcerned} Ministry</p>
                            <p>For more info liase with : <b>{announcment.Liaison}</b></p>
                            <hr/>
                        </div>
                   
                )
                )) || <p>Announcments loading</p>}
            </div>
        </div>
    );
}

export default Events;