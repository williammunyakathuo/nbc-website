import { NavLink, Outlet } from "react-router-dom";
import useFetch from "../../fetchSermons";

const Allsermons = () => {
    const sermonsURL = 'http://localhost:8050/allsermons'
    const {sermons, isLoading} = useFetch(sermonsURL)


    return ( 
        <div className="allSermons">
            <Outlet />
            <center> <div className="mainHeader">All Sermons</div> </center>
            {isLoading  && <p>All sermons</p> }
            {sermons && sermons.map((sermon)=>(
                <div className="single" key={sermon.id}>
                    <NavLink to={`onesermon/${sermon.id}`} >
                        <div className="subHeader">{sermon.title}</div>
                        <p>{sermon.series_name}</p>
                        <p>Preacher: {sermon.preacher}</p>
                    </NavLink>
                    <hr/>
                </div>
            ))}
            
        </div>
     );
}
 
export default Allsermons;