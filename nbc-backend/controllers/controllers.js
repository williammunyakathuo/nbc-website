const sql = require('mssql');

const { sqlConfig } = require('../serverconfig');


module.exports = {

    viewEvents: async(req, res)=>{
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXECUTE GetAllEvents`;
            const events = result.recordset;
            res.json(events);
        } catch (error) {
            console.log(error)
        }
    },
    
    viewAnnounce: async(req,res) =>{
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXEC GetChurchAnnouncements`;
            const announce = result.recordset;
            res.json(announce)
        } catch (error) {
            console.log(error)
        }
    },

    viewSermons: async(req, res) =>{
        try {
            await sql.connect(sqlConfig);
            const result =  await sql.query`EXEC GetAllPreachings`
            const sermons = result.recordset;
            res.json(sermons)
        } catch (error) {
            console.log(error)
            
        }
    },

    slidshowImages: async(req, res) =>{
        try {
            await sql.connect(sqlConfig);
            const result = await sql.query`EXEC GetAllSlideshows`
            const images = result.recordset;
            res.json(images);
        } catch (error) {
            console.log(error)
        }
    },

    showLeaders: async(req, res) =>{
        try {
            await sql.connect(sqlConfig);
            let results = await sql.query`EXEC GetChurchLeaders`
            const leaders = results.recordset;
            res.json(leaders)
        } catch (error) {
            console.log(error)
        }
    }

    
}







