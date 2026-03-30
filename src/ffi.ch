public namespace miniz {

protected struct ffi {
    @extern
    func mz_version() : *char;

    @extern
    func mz_adler32(adler : mz_ulong, ptr : *u8, buf_len : size_t) : mz_ulong;

    @extern
    func mz_crc32(crc : mz_ulong, ptr : *u8, buf_len : size_t) : mz_ulong;

    @extern
    func mz_compress(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong) : int;

    @extern
    func mz_compress2(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong, level : int) : int;

    @extern
    func mz_compressBound(source_len : mz_ulong) : mz_ulong;

    @extern
    func mz_uncompress(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong) : int;

    @extern
    func mz_error(err : int) : *char;
}

}
