import React, { useEffect, useRef, useState } from 'react';
import { Carousel } from 'react-responsive-carousel';
import 'react-responsive-carousel/lib/styles/carousel.min.css';
import '../home.css'

import congregation from '../../../assets/slideshow/congragation.jpg'
import missionTeam from '../../../assets/slideshow/missionteam.jpg';
import bornagain from '../../../assets/slideshow/bornagain.jpg';
import leadersdedication from '../../../assets/slideshow/leadersdedication.jpg';
import pastor from '../../../assets/pastor1.jpg';
import prayer from '../../../assets/slideshow/prayer.jpg'
import youthleaders from '../../../assets/slideshow/youthleaders.jpg'
import prev from '../../../assets/left-arrow.png'
import next from '../../../assets/right-arrow.png'
import axios from 'axios';

const slideshowURL = 'http://localhost:8050/slideshow'

const Slideshow = () => {

    const carouselRef = useRef(null);
    const [slideshow, setSlideshow] = useState()
    const [loading, setLoading] = useState(true)

    useEffect(() => {
        const fetchSlideshow = async () => {
            try {
                const response = await axios.get(slideshowURL)
                setSlideshow(response.data)
                setLoading(false)
            } catch (error) {
                console.log(error)
            }
        }
        fetchSlideshow()
    }, [])
    const handleLoop = () => {
        const nextSlideIndex = (carouselRef.current.getCurrentSlide() + 1) % carouselRef.current.getTotalSlides();
        carouselRef.current.setCurrentSlide(nextSlideIndex);
    };

    return (
        <div className="slideshow">
            {loading && <p>Slideshow loading ...</p>}
            {slideshow &&<Carousel
                autoPlay={true}
                infiniteLoop={true} 
                interval={4000}
                showThumbs={false}
                renderArrowPrev={(onClickHandler, hasPrev, label) =>
                    hasPrev && (
                        <button className="carousel-button prev" onClick={onClickHandler} title={label}>
                            <img src={prev} alt="prev" className='slideshow_buttons' />
                        </button>
                    )
                }
                renderArrowNext={(onClickHandler, hasNext, label) =>
                    hasNext && (
                        <button className="carousel-button next" onClick={onClickHandler} title={label}>
                            <img src={next} alt="next" className='slideshow_buttons' />
                        </button>
                    )
                }
            >

                
                {slideshow.map((image) => (
                    <div className="slide-container" key={image.id}>
                        <div className="slide-image-container">
                            <img src={congregation} alt="Slide 1" className="slide-image" />
                        </div>
                        <div className="slide-caption-container">
                            <p className="slide-caption">{image.caption}</p>
                        </div>
                    </div>
                )
                )}
            </Carousel>}
        </div>
    );
}

export default Slideshow;