# Questions 1, 2, 4
text = read("federalistpapers.txt", String)
essays = split(text, r"FEDERALIST No.\ \d+")
popfirst!(essays)
authors = Array{String}(undef, length(essays))
for i in eachindex(essays)
    essayParts = split(essays[i], "PUBLIUS")
    essayParts = split(essayParts[1], "To the People of the State of New York")
    firstPart = split(essayParts[1], "\r\n\r\n")
    if(i in 49:58 || i in 62:63)
        authors[i] = "UNKNOWN"
    else
        authors[i] = replace(firstPart[end - 1], "\r\n" => "")
    end
    secondPart = essayParts[2]
    essays[i] = string(secondPart[6:end], "PUBLIUS")
end


# Question 3
function separateIntoParagraphs(essays)
    array = Array{String}[]
    for i in eachindex(essays)
        paragraphs = split(essays[i], "\r\n\r\n")
        for j in eachindex(paragraphs)
            paragraphs[j] = replace(paragraphs[j], "\r\n" => " ")
        end
        push!(array, paragraphs)
    end
    return array
end

array = separateIntoParagraphs(essays)

# Questions 5, 6, 7, 8
function editText(text)
    editedText = lowercase(text)
    editedText = replace(editedText, r"\(\d+\)" => "")
    editedText = replace(editedText, r"\d+" => "")
    editedText = replace(editedText, "\r\n" => " ")
    editedText = replace(editedText, r"[,:;'-]"=> "")
    return editedText
end

function editEssays(essays)
    for i in eachindex(essays)
        essays[i] = editText(essays[i])
    end
    return essays
end

function editParagraphs(array)
    for i in eachindex(array)
        for j in eachindex(array[i])
            array[i][j] = editText(array[i][j])
        end
    end
    return array
end

essays = editEssays(essays)
array = editParagraphs(array)

# Question 9
authorSet = ["HAMILTON", "MADISON", "JAY", "UNKNOWN", "ALL"]

function addParagraphsByAuthor(paragraphs, authors)
    essaysByAuthor = [Array{String}[], Array{String}[], Array{String}[], Array{String}[], Array{String}[]]
    for i in eachindex(authors)
        if(cmp(authors[i], "HAMILTON") == 0)
            hamilton = Array{String}(undef, 0)
            for j in eachindex(paragraphs[i])
                push!(hamilton, paragraphs[i][j])
            end
            push!(essaysByAuthor[1], hamilton)
        elseif(cmp(authors[i], "MADISON") == 0)
            madison = Array{String}(undef, 0)
            for j in eachindex(paragraphs[i])
                push!(madison, paragraphs[i][j])
            end
            push!(essaysByAuthor[2], madison)
        elseif(cmp(authors[i], "MADISON, WITH HAMILTON") == 0)
            hamilton = Array{String}(undef, 0)
            madison = Array{String}(undef, 0)
            for j in eachindex(paragraphs[i])
                push!(hamilton, paragraphs[i][j])
                push!(madison, paragraphs[i][j])
            end
            push!(essaysByAuthor[1], hamilton)
            push!(essaysByAuthor[2], madison)
        elseif(cmp(authors[i], "JAY") == 0)
            jay = Array{String}(undef, 0)
            for j in eachindex(paragraphs[i])
                push!(jay, paragraphs[i][j])
            end
            push!(essaysByAuthor[3], jay)
        else
            unknown = Array{String}(undef, 0)
            for j in eachindex(paragraphs[i])
                push!(unknown, paragraphs[i][j])
            end
            push!(essaysByAuthor[4], unknown)
        end
    end
    essaysByAuthor[5] = paragraphs
    return essaysByAuthor
end

paragraphsByAuthor = addParagraphsByAuthor(array, authors)

# Question 9a
function avgWordsPerEssay(authorParagraphs)
    wordCount = 0
    for i in eachindex(authorParagraphs)
        for j in eachindex(authorParagraphs[i])
            wordCount += (count(" ", authorParagraphs[i][j]) + 1)
        end
    end
    return wordCount / length(authorParagraphs)
end
println("Average number of words per essay by Madison is $(avgWordsPerEssay(paragraphsByAuthor[2])), by Hamilton is $(avgWordsPerEssay(paragraphsByAuthor[1])), by Jay is $(avgWordsPerEssay(paragraphsByAuthor[3])), by JAY is $(avgWordsPerEssay(paragraphsByAuthor[4])) and OVERALL is $(avgWordsPerEssay(paragraphsByAuthor[5]))")

function find_essays_by_author(essays, author)
    if(cmp(author, "ALL") == 0)
        return essays
    end
    indices = findall(x -> x == author, authors)
    return essays[indices]
end

function total_word_count(essays)
    total_word_count = 0
    for essay in essays
        words = split(essay, r"\s+")
        total_word_count += length(words)
    end
    return total_word_count
end

function average_word_count(essays)
    return total_word_count(essays) / length(essays)
end

function average_word_length(essays)
    total_word_length = 0
    total_word_count = 0
    for essay in essays
        words = split(essay, r"(?<![.?!])\s*[.?!]\s*")
        for word in words
            total_word_length += length(word)
        end
        total_word_count += length(words)
    end
    return total_word_length / total_word_count
end

function average_sentence_count(essays)
    total_sentence_count = 0
    for essay in essays
        sentences = split(essay, r"[.?!]")
        total_sentence_count += length(sentences)
    end
    return total_sentence_count / length(essays)
end

function average_sentence_per_paragraph(essays)
    total_sentence_count = 0
    total_paragraph_count = 0
    for essay in essays
        paragraphs = split(essay, "\n")
        total_paragraph_count += length(paragraphs)
        for paragraph in paragraphs
            sentences = split(paragraph, r"[.?!]")
            total_sentence_count += length(sentences)
        end
    end
    return total_sentence_count / total_paragraph_count
end

function unique_word_count(essays)
    word_dict = Dict()
    for essay in essays
        words = split(essay, r"\s+")
        for word in words
            if haskey(word_dict, word)
                word_dict[word] += 1
            else
                word_dict[word] = 1
            end
        end
    end
    return word_dict
end

hamilton_words = Dict()
madison_words = Dict()
jay_words = Dict()
unknown_words = Dict()
hamilton_words_total = 0
madison_words_total = 0
jay_words_total = 0
unknown_words_total = 0

for author in authorSet
    author_essays = find_essays_by_author(essays, author) 
    println(author, " wrote ", length(author_essays), " essays.")
    println("Average word count per essay: ", average_word_count(author_essays))
    println("Average word length per essay: ", average_word_length(author_essays))
    println("Average sentence count per essay: ", average_sentence_count(author_essays))
    println("Average sentence count per paragraph: ", average_sentence_per_paragraph(author_essays))
    word_dict = unique_word_count(author_essays)
    #obtain the word count dictionaries for each author
    if(cmp(author, "HAMILTON") == 0)
        hamilton_words = word_dict
        hamilton_words_total = total_word_count(author_essays)
    elseif(cmp(author, "MADISON") == 0)
        madison_words = word_dict  
        madison_words_total = total_word_count(author_essays)
    elseif(cmp(author, "JAY") == 0)
        jay_words = word_dict   
        jay_words_total = total_word_count(author_essays)
    elseif(cmp(author, "UNKNOWN") == 0)
        unknown_words = word_dict   
        unknown_words_total = total_word_count(author_essays)
    end
    #=
    println("Unique words and their frequency:")
    for (word, count) in word_dict
        println(word, ": ", count)
    end
    =#
end

# Define the Score function (only for MADISON, HAMILTON, JAY, UNKNOWN)
function Score(author, word)
    M = get(madison_words, word, 0) / madison_words_total
    H = get(hamilton_words, word, 0) / hamilton_words_total
    J = get(jay_words, word, 0) / jay_words_total
    U = get(unknown_words, word, 0) / unknown_words_total
    if(cmp(author, "HAMILTON") == 0)
        return abs(H - M) + abs(H - J)
    elseif (cmp(author, "MADISON") == 0)
        return abs(M - H) + abs(M - J)
    elseif (cmp(author, "JAY") == 0)
        return abs(J - H) + abs(J - M)
    else
        return (3/2) * (abs(U - H) + abs(U - M) + abs(U - J))
    end
end

# Find the 10 words with the highest score for each author
madison_scores = Dict()
for word in keys(madison_words)
    madison_scores[word] = Score("MADISON", word)
end
madison_top10 = sort(collect(madison_scores), by=x->x[2], rev=true)[1:10]

hamilton_scores = Dict()
for word in keys(hamilton_words)
    hamilton_scores[word] = Score("HAMILTON", word)
end
hamilton_top10 = sort(collect(hamilton_scores), by=x->x[2], rev=true)[1:10]

jay_scores = Dict()
for word in keys(jay_words)
    jay_scores[word] = Score("JAY", word)
end
jay_top10 = sort(collect(jay_scores), by=x->x[2], rev=true)[1:10]

# Print the results
print("Top 10 words for Madison:")
for word in madison_top10
    if(cmp(word, madison_top10[end]) == 0)
        println(" $(word[1]).")
    else
        print(" $(word[1]),")
    end
end

print("Top 10 words for Hamilton:")
for word in hamilton_top10
    if(cmp(word, hamilton_top10[end]) == 0)
        println(" $(word[1]).")
    else
        print(" $(word[1]),")
    end
end

print("Top 10 words for Jay:")
for word in jay_top10
    if(cmp(word, jay_top10[end]) == 0)
        println(" $(word[1]).")
    else
        print(" $(word[1]),")
    end
end

index = 1
top10_words = Set{String}()
for word in hamilton_top10
    push!(top10_words, word[1])
end
for word in madison_top10
    push!(top10_words, word[1])
end
for word in jay_top10
    push!(top10_words, word[1])
end

function createVector(author, essays)
    author_essays = find_essays_by_author(essays, author)
    vector = Vector{Float64}(undef, 4)
    vector[1] = average_word_count(author_essays)
    vector[2] = average_word_length(author_essays)
    vector[3] = average_sentence_count(author_essays)
    vector[4] = average_sentence_per_paragraph(author_essays)
    for word in top10_words
        push!(vector, Score(author, word))
    end
    return vector
end

hamilton_vector = createVector("HAMILTON", essays)
madison_vector = createVector("MADISON", essays)
jay_vector = createVector("JAY", essays)
unknown_vector = createVector("UNKNOWN", essays)
 
# Question 14

unknown_vector = Vector{<:Any}(undef, 0)
   # put the known vectors in an array

known_vectors = [hamilton_vector, madison_vector, jay_vector]

function calculateDistances()
    # calculate the distances using the 2-norm
    distances = [norm(known_vector - unknown_vector, 2) for known_vector in known_vectors]
    return distances
end

function predictedAuthor()
    (max_value, max_index) = findmin(calculateDistances())
    if max_index == 1
        println( "Predicted author to Federalist Papers 49-58 and 62-63 is Hamilton.")
    else if max_index == 2
        println( "Predicted author to Federalist Papers 49-58 and 62-63 is Madison.")
    else if max_index == 3
        println( "Predicted author to Federalist Papers 49-58 and 62-63 is Jay.")
end

# Q16
using Statistics

function iqrange(data)
    sortedData = sort(collect(data), by=x->x[2], rev=true)
    values = [pair.second for pair in sortedData]
    q1 = quantile(values, 0.25)
    q3 = quantile(values, 0.75)
    iqr = q3 - q1
    iqr_strings = [""]
    for pair in data 
        if pair.second >= q1 && pair.second <= q3
            push!(iqr_strings,pair.first)
        end
    end

    return iqr_strings

end

iqrange(madison_scores)
iqrange(jay_scores)
iqrange(hamilton_scores)