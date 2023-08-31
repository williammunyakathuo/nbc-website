import axios from "axios";
import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

const OneEvent = () => {
    const { id } = useParams();
    const [event, setEvent] = useState()
    const eventURL = `http://localhost:8050/event/${id}`

    useEffect(() => {
        axios
            .get(eventURL)
            .then(response =>{
                setEvent(response.data)
                
            })
            .catch(error=>{
                console.log(error)
            })
    },[eventURL])

    console.log(" the events are " + event)
    return (

        <div className="oneEvent">
            <div>
                lorem 
                lorem 
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus facere sunt soluta magni repellat, neque esse molestiae. Assumenda, quae. Unde nobis eaque recusandae minima? Nihil impedit temporibus necessitatibus iste reiciendis?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores earum architecto beatae fugit voluptatibus consectetur porro laudantium adipisci obcaecati provident, harum aperiam voluptatum sed pariatur delectus cupiditate? Consequatur, quidem in!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Non nostrum nobis odio similique tenetur labore laboriosam temporibus ipsa at. Deleniti perferendis placeat, similique voluptatum quaerat eligendi quas commodi hic! Distinctio!
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Natus, alias ipsum modi quod quaerat ex impedit autem laudantium temporibus nesciunt unde cupiditate, laborum saepe, similique ullam nam corporis reprehenderit amet!
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed quasi, doloremque autem quod iusto veniam deserunt neque eveniet? Placeat itaque quam id. Totam ipsam consequuntur nostrum quae laudantium eius ducimus.
                lorem


            </div>
            
            {event && <div className="event"  >
                <p>{event.EventName}</p>
                <p>{event.EventDate}</p>
                <p>{event.Location}</p>
                <p>{event.OrganizingMinistry}</p>
                <p>{event.OrganizerContact}</p>
            </div> }

            <p>{event && event.EventName}</p>
        </div>
    );
}

export default OneEvent;