module {
    "name": "objects",
    "description": "Utilities generally related to objects for jq, written in jq.",
    "homepage": "https://gist.github.com/tlagrone/e33762f4b374488ed91d45e07a37cc51",
    "author": "Travis C. LaGrone",
    "email": "travis.lagrone@trintech.com",
    "company": "Trintech"
};


# TODO document rename($from; $to)
def rename($from; $to):
	."\($to)" = ."\($from)" | del(."\($from)");


# TODO document rename($mapping)
def rename($map):
    with_entries(.key as $key | .key = ($map | (."\($key)" // $key))) ;

