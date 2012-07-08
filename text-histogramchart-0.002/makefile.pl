use 5.008_001;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Text::HistogramChart',
    AUTHOR              => q{Mikko Koivunalho <mikko.koivunalho@iki.fi>},
    VERSION_FROM        => 'lib/Text/HistogramChart.pm',
    ABSTRACT_FROM       => 'lib/Text/HistogramChart.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Text-HistogramChart-*' },
    PM_FILTER           => 'grep -v \\"\\$\:\:DBG\\"'
);