import About from "../Home./homecomponents/About";
import Intro from "./aboutComponents/Intro";
import Testimonies from '../Home./homecomponents/Testimonies'
import './About.css'
function Aboutus() {
    return (
        <div className="aboutus">
            <Intro />
            <About />
            <div className="moreAbout lilIntro">
                <div className="aboutSection">
                    <div className="mainHeader">
                        Baptist Short History:
                    </div>
                    <p>
                        With roots tracing back to the 17th century, the Baptist tradition has a rich and diverse history. Emerging from the English Separatist movement, Baptists championed the principles of religious liberty, believer's baptism by immersion, and the autonomy of the local church. From their early beginnings, Baptists have been characterized by their commitment to personal faith, congregational governance, and the proclamation of the Gospel. Today, Baptist churches worldwide continue to embrace these core principles while adapting to the needs of their communities and embracing new expressions of worship and ministry.
                    </p>
                </div>
                <div className="aboutSection">
                    <div className="mainHeader">
                        Statement of Faith:
                    </div>
                    <p>
                        At our Baptist church, our statement of faith is centered on the essentials of the Christian faith and our distinctive Baptist beliefs. We affirm the inspiration and authority of the Holy Scriptures, the triune nature of God, the deity and humanity of Jesus Christ, salvation by grace through faith, the priesthood of all believers, and the imminent return of Christ. With a commitment to the autonomy of the local church, we strive to live out our faith in love, grace, and service to others, while continually seeking a deeper understanding of God's Word and His calling for our lives.
                    </p>
                </div>
                <div className="aboutSection">
                    <div className="mainHeader">
                        Community Involvement:
                    </div>
                    <p>
                        Engaging with our local community is a vital part of our Baptist identity. We believe that faith is not meant to be confined within the church walls but should impact and transform the world around us. Through various outreach initiatives, we actively seek to make a positive difference in the lives of those in need. From partnering with local organizations to provide food and shelter to organizing community events that promote unity and well-being, we are committed to extending God's love and compassion to our neighbors. Together, we can build a stronger community, inspire hope, and foster a spirit of unity that transcends differences and celebrates our shared humanity.
                    </p>
                </div>
                <Testimonies />
                <div className="aboutSection">
                    <p>
                        Nestled amidst the picturesque Blue Valley, our Baptist church offers more than just a place of worship—it is a vibrant community where people from all walks of life find genuine connections and spiritual growth. With heartfelt worship, inspiring teachings, and a warm fellowship, our church becomes a sanctuary of love and acceptance. We are passionate about nurturing relationships, providing opportunities for personal development, and equipping individuals to live out their faith in a meaningful way. Whether you are a seeker exploring the Christian faith or a long-time believer searching for a community to call home, we invite you to join us on this exciting journey of discovering the depth of God's love and purpose for your life.
                    </p>
                </div>
            </div>
            
        </div>
    );
}

export default Aboutus;