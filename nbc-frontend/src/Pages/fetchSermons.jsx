import axios from "axios"
import { useEffect, useState } from "react"

const useFetch = (url) => {

    const [sermons, setSermons] = useState();
    const [isLoading, setisLoading] = useState(true)

    useEffect(()=>{
        axios
        .get(url)
        .then(response => {
            setSermons(response.data)
            setisLoading(false)
        })
        .catch(error => {
            console.log(error)
        })
    }, [url])

    return { sermons, isLoading }
}

export default useFetch;