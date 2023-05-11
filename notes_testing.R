essentially I need to run a for or while loop that from the Title and Bibliography info excel sheet pulls Source title and a number of other items from the row and compares it too
every entry on the one observation per row list and then spits out the Source Title and the search it result along with the comparison "score"  -- LV or JAccard form the string dist.

Regex to use in replace
[^a-zA-Z0-9]

maybe try this for removing just nonascii characters
^\x00-\x7F

this is the single call to be made and stepped through row by row
string_dist_testing <- data.frame(fall_2020_paper_citations_seeded_with_wins$paper_title,paper_titles_testing$Title,fall_2020_paper_citations_seeded_with_wins$source_title,stringdist(tolower(fall_2020_paper_citations_seeded_with_wins$source_title),tolower(paper_titles_testing$Title), method = "lv"))