const router = require('express').Router()

const { viewEvents,
     viewAnnounce,
     viewSermons,
     slidshowImages,
     showLeaders,
     viewFellowships,
     viewOneSermon,
     viewAllSermons,
     deleteSermon, 
     createSermons,
     editSermon,
     viewOneEvent} = require('../controllers/controllers')

router.get('/events', viewEvents)
router.get('/announcements', viewAnnounce)
router.get('/sermons', viewSermons)
router.get('/slideshow', slidshowImages)
router.get('/leaders', showLeaders)
router.get('/fellowships', viewFellowships)
router.get('/onesermon/:id', viewOneSermon);
router.get('/allsermons', viewAllSermons)
router.delete('/sermon/:id', deleteSermon)
router.post('/sermons', createSermons)
router.put('/sermon', editSermon)
router.get('/event/:id', viewOneEvent);


module.exports = router