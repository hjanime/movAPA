% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R_funclib_movAPA.r
\name{annotatePAC}
\alias{annotatePAC}
\title{Annotate PACs}
\usage{
annotatePAC(pac, aGFF, verbose=FALSE)
}
\arguments{
\item{pac}{a data frame with [chr/coord/strand] or a PACdataset.}

\item{aGFF}{specify a genome annotation, see parseGenomeAnnotation().}
}
\value{
a PACdataset with annotation if pac is PACdataset, or a data frame if pac is a data frame.
         If a PACdataset is returned, the original @anno columns in pac are remained (duplicated annotation columns are removed).
         If a PACdataset is returned, duplicated rows with the same chr/strand/coord will be removed.
         If a PACdataset is returned, will add @supp$stopCodon to store the stopCodon of all transcripts, which can be used for ext3UTRPACds().
         The following columns are added for annotation:
  "ftr", "ftr_start","ftr_end","gene","biotype",","gene_start","gene_end","gene_stop_codon",
  "upstream_id","upstream_start","upstream_end","downstream_id","downstram_start",
  "downstream_end","three_UTR_length","three_extend".
 *`ftr` is the type of feature about coord of PAC, including 3UTR,
   5UTR, CDS, intron, exon, and intergenic;
 *`ftr_start` is start position of the "ftr";
 *`ftr_end` is end position of the "ftr";
 *`gene` is the gene name of the feature;
 *`gene_start` is start position of the gene;
 *`gene_end` is end position of the gene;
 *`gene_type` is the classification of the gene, such as protein_coding,
   long non-conding RNA (lncRNA), non-coding RNA (ncRNA), tRNA and so on;
 *`gene_stop_codon` is the end position of stop codon for protein coding gene or transcript,
   is the end postion of gene for ncRNA;
 *`upstream_id` is the upstream gene name of poly(A) sites that are located in intergenic;
 *`upstream_start` is the start position of `upstream_id`;
 *`upstream_end` is the end position of `upstream_id`;
 *`downstream_id` same as upstream_id expected for downstream gene;
 *`downstream_start` see upstream_start;
 *`downstream_end` see upstream_end;
 *`three_UTR_length` is the length of 3'UTR, which is equal to
   poly(A) sites minus the end position of stop codon of gene. This is only for poly(A) site
   located in 3'UTR or intergenic;
 *`three_extend` is used to identify the poly(A) site in 3'UTR extension, which is equal to
    poly(A) sites minus end positon of its upstream gene. This is only for poly(A) site
    located in intergenic;
}
\description{
annotatePAC annotates PACs with a given GFF annotation.
}
\details{
If after annotation, the PAC number is changed, it will raise a warning but not error.
In such case, you may need to check aGFF.
}
\examples{
load('Oryza_sativa.IRGSP-1.0.42.gff.rda')
data(PACds)
## Because the demo data already contain the annotation, here we removed the annotation columns first.
PACds1=PACds
PACds1@anno[,c('gene','ftr','gene_type','ftr_start','ftr_end')]=NULL
PACds1=annotatePAC(PACds1, gff)
## not run ##
## Annotate a PAC data frame with a gff3 file
newpac=annotatePAC(pac, aGFF='mm10.gff3')
## Annotate a PACdataset
newpac=annotatePAC(pacds, aGFF=TxDb.Mmusculus.UCSC.mm10.ensGene)
## Annotate a PAC data frame with existing gff.rda from parseGenomeAnnotation()
newpac=annotatePAC(pac, 'mm10.rda')
}
\seealso{
[parseGenomeAnnotation()] to get an gff annotation object.

Other PACdataset functions: 
\code{\link{PACdataset-class}},
\code{\link{PACds}},
\code{\link{annotateByKnownPAC}()},
\code{\link{annotateByPAS}()},
\code{\link{countOvpPACds}()},
\code{\link{ext3UTRPACds}()},
\code{\link{findOvpPACds}()},
\code{\link{get3UTRAPAds}()},
\code{\link{makeExamplePACds}()},
\code{\link{mergePACds}()},
\code{\link{normalizePACds}()},
\code{\link{plotPACdsStat}()},
\code{\link{rbind}()},
\code{\link{readPACds}()},
\code{\link{removePACdsIP}()},
\code{\link{samplePACds}()},
\code{\link{scPACds}},
\code{\link{subsetPACds}()},
\code{\link{writePACds}()}
}
\concept{PACdataset functions}
