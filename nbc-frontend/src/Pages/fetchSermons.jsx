import axios from "axios"
import { useState } from "react"

const useFetch = (url) => {

    const [sermons, setSermons] = useState();
    const [isLoading, setisLoading] = useState(true)

    axios
        .get(url)
        .then(response => {
            setSermons(response.data)
            setisLoading(false)
        })
        .catch(error => {
            console.log(error)
        })



    return { sermons, isLoading }
}

export default useFetch;