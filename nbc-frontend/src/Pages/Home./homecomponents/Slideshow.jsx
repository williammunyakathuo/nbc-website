import React, { useRef } from 'react';
import { Carousel } from 'react-responsive-carousel';
import 'react-responsive-carousel/lib/styles/carousel.min.css';
import '../home.css'

import missionTeam from '../../../assets/slideshow/missionteam.jpg';
import bornAgain from '../../../assets/slideshow/bornagain.jpg';
import youth from '../../../assets/slideshow/youthleaders.jpg';
import pastor from '../../../assets/pastor1.jpg';
import design from '../../../assets/slideshow/landing.jpg'
import prev from '../../../assets/left-arrow.png'
import next from '../../../assets/right-arrow.png'

const Slideshow = () => {

    const carouselRef = useRef(null);

    const handleLoop = () => {
        const nextSlideIndex = (carouselRef.current.getCurrentSlide() + 1) % carouselRef.current.getTotalSlides();
        carouselRef.current.setCurrentSlide(nextSlideIndex);
    };

    return (
        <div className="slideshow">
            <Carousel
                autoPlay={true}
                infiniteLoop={true} // Enable endless loop
                interval={3000}
                showThumbs={false}
                renderArrowPrev={(onClickHandler, hasPrev, label) =>
                    hasPrev && (
                        <button className="carousel-button prev" onClick={onClickHandler} title={label}>
                            <img src={prev} alt="prev" className='slideshow_buttons'/>
                        </button>
                    )
                }
                renderArrowNext={(onClickHandler, hasNext, label) =>
                    hasNext && (
                        <button className="carousel-button next" onClick={onClickHandler} title={label}>
                            <img src={next} alt="next"  className='slideshow_buttons' />
                        </button>
                    )
                }
            >
                <div className="slide-container">
                    <div className="slide-image-container">
                        <img src={pastor} alt="Slide 1" className="slide-image" />
                    </div>
                    <div className="slide-caption-container">
                        <p className="slide-caption">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quod est pariatur maxime officiis reiciendis debitis optio consequatur reprehenderit provident laudantium accusamus cum quis voluptas, recusandae molestias eius totam maiores similique?</p>
                    </div>
                </div>
                <div className="slide-container">
                    <div className="slide-image-container">
                        <img src={bornAgain} alt="Slide 2" className="slide-image" />
                    </div>
                    <div className="slide-caption-container">
                        <p className="slide-caption">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eius officia, distinctio velit dignissimos numquam ullam laborum impedit recusandae iure rerum dolores ipsa quia. Voluptates, voluptatum illum commodi culpa quos dicta?</p>
                    </div>
                </div>
                <div className="slide-container">
                    <div className="slide-image-container">
                        <img src={youth} alt="Slide 3" className="slide-image" />
                    </div>
                    <div className="slide-caption-container">
                        <p className="slide-caption">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odit quisquam itaque magnam repudiandae et minima quam, blanditiis ullam rem nulla natus eaque iusto sapiente inventore tempora est illum consectetur aliquid!</p>
                    </div>
                </div>
                <div className="slide-container">
                    <div className="slide-image-container">
                        <img src={missionTeam} alt="Slide 3" className="slide-image" />
                    </div>
                    <div className="slide-caption-container">
                        <p className="slide-caption">Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae quae enim adipisci repellat accusantium, debitis similique mollitia maxime porro, animi odit nesciunt alias. Vitae iusto reiciendis nostrum at quis quaerat. </p>
                    </div>
                </div>
                <div className="slide-container">
                    <div className="slide-image-container">
                        <img src={design} alt="Slide 3" className="slide-image" />
                    </div>
                    <div className="slide-caption-container">
                        <p className="slide-caption">Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa debitis quae, repellendus illum itaque, reiciendis magnam totam inventore assumenda nulla ut accusamus natus a labore repudiandae officiis recusandae dicta illo.
                        </p>
                    </div>
                </div>
            </Carousel>
        </div>
    );
}

export default Slideshow;