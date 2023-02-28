const FEDERALIST_FILE = "federalistpapers.txt"
let essaysArray = Array{String}
    function readFile()
        textFile = open(FEDERALIST_FILE)
        text = readall(textFile)
        close(textFile)
        return text
    end
    
    
#Break it up into the individual essays
    
    function breakIntoEssays(text)
        essaysArray = split(text, "Federalist No.\d+.")
        essaysArray = essaysArray[2:length(essaysArray)]
        # Remove everything up to "To the People of the State of New York"
        for i in 1:length(essaysArray)
            start = findfirst(x -> x == 'T', essaysArray[i])
            essaysArray[i] = essaysArray[i][start:end]
        end
        return essaysArray
    end
    
    
#Store the essays in a string array of arrays
    
    function storeEssays(essaysArray)
        for i in 1:length(essaysArray)
            paragraphsArray = split(essaysArray[i], "")
            essaysArray[i] = paragraphsArray
            # Remove all newlines from within a paragraph and concatenate the lines
            for j in 1:length(paragraphsArray)
                paragraphsArray[j] = replace(paragraphsArray[j], r"(\n)+", "")
            end
        end
        return essaysArray
    end
    
    
    Main
    
    text = readFile()
    essaysArray = breakIntoEssays(text)
    essaysArray = storeEssays(essaysArray)
    println(essaysArray)