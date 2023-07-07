const router = require('express').Router()

const {viewEvents, viewAnnounce, viewSermons, slidshowImages, showLeaders} = require('../controllers/controllers')

router.get('/events', viewEvents)
router.get('/announcements', viewAnnounce)
router.get('/sermons', viewSermons)
router.get('/slideshow', slidshowImages)
router.get('/leaders', showLeaders )


module.exports = router