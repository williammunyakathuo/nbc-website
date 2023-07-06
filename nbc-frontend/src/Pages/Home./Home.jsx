import Events from "./homecomponents/Events";
import Pastor from "./homecomponents/Pastor";
import Slideshow from "./homecomponents/Slideshow";
import Welcome from "./homecomponents/Welcome";
import About from "./homecomponents/About";
import Sermons from "./homecomponents/Sermons";

const Home = () => {


    return (
        <div className="home">
            <Slideshow />
            <Welcome />
            <Pastor/>
            <About/>
            <Sermons/>
            <Events />
        </div>

    );
}

export default Home;