import Events from "./homecomponents/Events";
import Pastor from "./homecomponents/Pastor";
import Slideshow from "./homecomponents/Slideshow";
import Welcome from "./homecomponents/Welcome";
import About from "./homecomponents/About";
import Sermons from "./homecomponents/Sermons";
import Testimonies from "./homecomponents/Testimonies";
import Study from "./homecomponents/Study";
import Leadership from "./homecomponents/Leadership";
import Footer from "../../Footer/Footer";

const Home = () => {


    return (
        <div className="home">
            <Slideshow />
            <Welcome />
            <Pastor/>
            <About/>
            <Sermons/>
            <Study/>
            <Events />
            <Testimonies/>
            <Footer/>
        </div>

    );
}

export default Home;