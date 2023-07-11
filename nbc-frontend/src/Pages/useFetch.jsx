import axios from "axios"
import { useState } from "react"

const useFetch = (url) => {

    const [sermon, setSermon] = useState();
    const [isPending, setisPending] = useState(true)

    axios
        .get(url)
        .then(response => {
            setSermon(response.data)
            setisPending(false)
        })
        .catch(error => {
            console.log(error)
        })



    return { sermon, isPending }
}

export default useFetch;