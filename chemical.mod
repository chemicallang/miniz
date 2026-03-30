module miniz

source "src"

import std

link c "upstream/miniz.c"
link c "upstream/miniz_tdef.c"
link c "upstream/miniz_tinfl.c"
