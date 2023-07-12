import axios from "axios"
import { useEffect, useState } from "react"

const useFetch = (url) => {

    const [sermon, setSermon] = useState();
    const [isPending, setisPending] = useState(true)

    useEffect(()=>{
        axios
        .get(url)
        .then(response => {
            setSermon(response.data)
            setisPending(false)
        })
        .catch(error => {
            console.log(error)
        })
    }, [url])

   



    return { sermon, isPending }
}

export default useFetch;