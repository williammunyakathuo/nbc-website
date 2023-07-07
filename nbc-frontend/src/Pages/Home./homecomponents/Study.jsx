import study from '../../../assets/7.jpg'

const Study = () => {
    return ( 
        <div className="studies">
            <div className="study">
                <div className="studyImage">
                    <img src={study} alt="bible" />
                </div>
                <div className="studyDetails">
                    <div className="subHeader">Bible Studies</div>
                   <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos molestiae pariatur placeat deserunt voluptates officiis blanditiis. Voluptatibus possimus, assumenda odit accusantium, neque quod tempora nemo deserunt alias vitae at soluta.</p>
                    <button>Learn More ...</button>
                </div>
            </div>
        </div>
     );
}
 
export default Study;