# Questions 1, 2, 4

text = read("federalistpapers.txt", String) # store the Federalist Papers in to a String
essays = split(text, r"FEDERALIST No.\ \d+") # each essay will be put in to an index of "essays" array
popfirst!(essays) # remove the introduction part before the first essay
authors = Array{String}(undef, length(essays))

# what about the last index where it contain the last essay
for i in eachindex(essays)
    essayParts = split(essays[i], "PUBLIUS")
    essayParts = split(essayParts[1], "To the People of the State of New York")
    firstPart = split(essayParts[1], "\r\n\r\n")
    if(i in 49:58 || i in 62:63)
        authors[i] = "Unknown"
    else
        authors[i] = replace(firstPart[end - 1], "\r\n" => "")
    end
    secondPart = essayParts[2]
    essays[i] = string(secondPart[6:end], "PUBLIUS")
end
essays

# Question 3
function separateIntoParagraphs(essays)
    array = Array{String}[]
    for i in eachindex(essays)
        paragraphs = split(essays[i], "\r\n\r\n")
        j = 1
        while (j <= length(paragraphs))
            if(cmp(paragraphs[j], "") == 0)
                deleteat!(paragraphs, j)
            else
                paragraphs[j] = replace(paragraphs[j], "\r\n" => " ")
                j += 1
            end
        end
        push!(array, paragraphs)
    end
    return array
end

array = separateIntoParagraphs(essays)

# Questions 5, 6, 7, 8(incomplete)
function editText(text)
    editedText = lowercase(text)
    editedText = replace(editedText, r"\(\d+\)" => "")
    editedText = replace(editedText, r"\d+" => "")
    return editedText
end

function editParagraphs(array)
    for i in eachindex(array)
        for j in eachindex(array[i])
            array[i][j] = editText(array[i][j])
        end
    end
    return array
end

function editEssays(essays)
    for i in eachindex(essays)
        essays[i] = editText(essays[i])
    end
    return essays
end

essays = editEssays(essays)
array = editParagraphs(array)

# Question 9
authorSet = ["Hamilton", "Madison", "Jay", "Unknown", "All"]

function addEssaysByAuthor(essays, authors)
    essaysByAuthor = [String[], String[], String[], String[], String[]]
    for i in eachindex(authors)
        if(cmp(authors[i], "HAMILTON") == 0)
            push!(essaysByAuthor[1], essays[i])
        elseif(cmp(authors[i], "MADISON") == 0)
            push!(essaysByAuthor[2], essays[i])
        elseif(cmp(authors[i], "MADISON, WITH HAMILTON") == 0)
            push!(essaysByAuthor[1], essays[i])
            push!(essaysByAuthor[2], essays[i])
        elseif(cmp(authors[i], "JAY") == 0)
            push!(essaysByAuthor[3], essays[i])
        else
            push!(essaysByAuthor[4], essays[i])
        end
    end
    essaysByAuthor[5] = essays
    return essaysByAuthor
end

essaysByAuthor = addEssaysByAuthor(essays, authors)

# Question 9a
function avgWordsPerEssay(authorEssays)
    wordCount = 0
    for i in eachindex(authorEssays)
        wordCount += (count(" ", authorEssays[i]) + 1)
    end
    return wordCount / length(authorEssays)
end

for i in 1:5
    display("Number of words per essay by $(authorSet[i]): $(avgWordsPerEssay(essaysByAuthor[i]))")
end

