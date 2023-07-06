import pastor from '../../../assets/slideshow/pasi.jpg'

const Pastor = () => {
    return ( 
        <div className="pastor">
            <div className="pastorsInfo">
                <div className="pastorImage">
                    <img src={pastor} alt="pastor" />
                </div>
                <div className="pastorIntro">
                    <h2>PST. PETER WANJOHI KAMAU</h2>
                    <p>Senior pastor<br/>
                    Nyeri baptist Church<br/>
                    Church council Chairman</p>
                </div>
                <div className="pastorsWords">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa ducimus architecto sequi impedit minus et iusto, libero ipsum, consectetur facilis enim! Rem vitae sed recusandae distinctio fuga, molestias nihil facere.</p>
                </div>
            </div>
        </div>
     );
}
 
export default Pastor;