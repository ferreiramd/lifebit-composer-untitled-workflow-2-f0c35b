nextflow.enable.dsl=2

include { test_r_1 } from './modules/test_r_1/module.nf'

workflow {
input1 = Channel.fromPath(params.test_r_1.accessions).splitCsv(sep: ';').map { row -> tuple(evaluate(row[0]), evaluate(row[1])) }
test_r_1(input1)
}
