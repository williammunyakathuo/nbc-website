const sql = require('mssql');

const { sqlConfig } = require('../serverconfig');


module.exports = {

    viewEvents: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXECUTE GetAllEvents`;
            const events = result.recordset;
            res.json(events);
        } catch (error) {
            console.log(error)
        }
    },

    viewOneEvent:  async(req,res) =>{
        const {id} = req.params;
        try {
            await sql.connect(sqlConfig) 
            const result = await sql.query`EXEC getOneEvent @EventID = ${id}`
            let event = result.recordset;
            res.json(event)
        } catch (error) {
            console.log(error)
        }
    },

    viewAnnounce: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXEC GetChurchAnnouncements`;
            const announce = result.recordset;
            res.json(announce)
        } catch (error) {
            console.log(error)
        }
    },

    createSermons: async (req, res) => {
        const details = req.body

        try {
            await sql.connect(sqlConfig);
            await sql.query(`EXEC CreatePreaching
            @datePreached = '${details.date_preached}',
            @preacher = '${details.preacher}',
            @title = '${details.title}',
            @mainVerse =' ${details.main_verse}',
            @teaching = '${details.teaching}',
            @durationMinutes = '${details.duration_minutes}',
            @seriesName = '${details.series_name}',
            @location = '${details.location}',
            @mediaLink = '${details.media_link}'
          `)
            res.status(200).json({message: 'preaching created succesfully'})

        } catch (error) {
            console.log(error)
            res.status(500).json({ error: 'An error occurred while creating the preaching record' });

        }
    },

    editSermon: async(req, res) =>{
        const details = req.body;

        try {
            await sql.connect(sqlConfig);
            await sql.query(`EXEC UpdatePreaching
            @preachingId = '${details.id}',
            @datePreached = '${details.date_preached}',
            @preacher = '${details.preacher}',
            @title = '${details.title}',
            @mainVerse =' ${details.main_verse}',
            @teaching = '${details.teaching}',
            @durationMinutes = '${details.duration_minutes}',
            @seriesName = '${details.series_name}',
            @location = '${details.location}',
            @mediaLink = '${details.media_link}'`)

            res.status(200).json({message: 'preaching edited succesfully'})
        } catch (error) {
            console.log(error)
            res.status(500).json({ error: 'An error occurred while editing the preaching record' });
        }
    },

    viewSermons: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXEC GetAllPreachings`
            const sermons = result.recordset;
            res.json(sermons)
        } catch (error) {
            console.log(error)

        }
    },

    viewAllSermons: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            const results = await sql.query`EXEC GetAllofPreachings`
            const sermons = results.recordset;
            res.json(sermons)
        } catch (error) {
            console.log(error);
        }
    },

    viewOneSermon: async (req, res) => {
        const { id } = req.params;

        try {
            await sql.connect(sqlConfig)
            const result = await sql.query`EXEC GetSermonByID @id = ${id}`
            const sermon = result.recordset[0];

            if (sermon) {
                res.json(sermon)
            } else {
                res.status(404).json({ error: 'Sermon not found' });
            }
        } catch (error) {
            console.log(error);
            res.status(500).json({ error: 'Internal server error' });
        }
    },

    deleteSermon: async (req, res) => {
        const sermonId = req.params.id;

        try {
            await sql.connect(sqlConfig);
            await sql.query`EXEC DeletePreaching @preachingId = ${sermonId};`

            res.status(200).json({ message: 'record deleted succefully' })

        } catch (error) {
            console.log(error)
        }
    },

    slidshowImages: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXEC GetAllSlideshows`
            const images = result.recordset;
            res.json(images);
        } catch (error) {
            console.log(error)
        }
    },

    showLeaders: async (req, res) => {
        try {
            await sql.connect(sqlConfig);
            let results = await sql.query`EXEC GetChurchLeaders`
            const leaders = results.recordset;
            res.json(leaders)
        } catch (error) {
            console.log(error)
        }
    },

    viewFellowships: async (req, res) => {
        try {
            await sql.connect(sqlConfig)
            let results = await sql.query`EXEC ViewFellowships`
            let fellowships = results.recordset;
            res.json(fellowships)
        } catch (error) {
            console.log(error)
        }
    }


}







