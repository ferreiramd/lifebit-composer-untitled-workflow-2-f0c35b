process test_r_1 {

    input:
        tuple val(label), val(accession)
        
    script:
    """
#!/usr/bin/env Rscript

label='$label'
accession='$accession'

print(match(5, c(2,7,5,3))) #  5 is in 3rd place
print(seq(from=1,to=3,by=.5) %in% 1:3)

    """

}