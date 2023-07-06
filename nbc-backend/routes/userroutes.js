const router = require('express').Router()

const {viewEvents, viewAnnounce, viewSermons} = require('../controllers/controllers')

router.get('/events', viewEvents)
router.get('/announcements', viewAnnounce)
router.get('/sermons', viewSermons)


module.exports = router