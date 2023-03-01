type
    Benchmark = object
        fasta: ref Fasta
        nbody: ref NBody
        nsieve: ref Nieve

proc newBenchmark*(fasta: Fasta, nbody: NBody, nsieve: Nieve): Benchmark =
    result = Benchmark()
    result.fasta = fasta
    result.nbody = nbody
    result.nsieve = nsieve

proc do_benchmark*(self: Benchmark) =
    if self.fasta != nil:
        self.fasta.compute()

    if self.nbody != nil:
        self.nbody.compute()

    if self.nsieve != nil:
        self.nsieve.compute()