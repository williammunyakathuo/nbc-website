import Events from "./homecomponents/Events";
import Pastor from "./homecomponents/Pastor";
import Slideshow from "./homecomponents/Slideshow";
import About from "./homecomponents/About";
import Sermons from "./homecomponents/Sermons";
import Testimonies from "./homecomponents/Testimonies";
import Study from "./homecomponents/Study";
import Bible from "./homecomponents/Bible";
import Fellowship from "./homecomponents/Fellowship";
import Verse from "./homecomponents/Verse";

const Home = () => {


    return (
        <div className="home">
            <Slideshow />
            <Pastor/>
            <About/>
            <Sermons/>
            <Verse/>
            <Study/>
            <Events />
            <Testimonies/>
            <Bible/>
            <Fellowship/>
        </div>

    );
}

export default Home;