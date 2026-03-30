public namespace miniz {

public type mz_ulong = ulong;

public enum CompressionLevel {
    NO_COMPRESSION = 0,
    BEST_SPEED = 1,
    BEST_COMPRESSION = 9,
    UBER_COMPRESSION = 10,
    DEFAULT = -1
}

public enum Flush {
    NO_FLUSH = 0,
    PARTIAL_FLUSH = 1,
    SYNC_FLUSH = 2,
    FULL_FLUSH = 3,
    FINISH = 4,
    BLOCK = 5
}

public enum Status {
    OK = 0,
    STREAM_END = 1,
    NEED_DICT = 2,
    ERRNO = -1,
    STREAM_ERROR = -2,
    DATA_ERROR = -3,
    MEM_ERROR = -4,
    BUF_ERROR = -5,
    VERSION_ERROR = -6,
    PARAM_ERROR = -10000
}

public const ADLER32_INIT : mz_ulong = 1 as mz_ulong
public const CRC32_INIT : mz_ulong = 0 as mz_ulong
public const VERSION_STRING : *char = "11.3.0"

}
