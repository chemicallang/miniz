public namespace miniz {

public func version() : std::string_view {
    return std::string_view(ffi::mz_version())
}

public func error_string(code : int) : std::string_view {
    return std::string_view(ffi::mz_error(code))
}

public func is_ok(code : int) : bool {
    return code == Status.OK as int
}

public func compress_bound(source_len : mz_ulong) : mz_ulong {
    return ffi::mz_compressBound(source_len)
}

public func adler32(data : *u8, len : size_t, seed : mz_ulong = ADLER32_INIT) : mz_ulong {
    return ffi::mz_adler32(seed, data, len)
}

public func crc32(data : *u8, len : size_t, seed : mz_ulong = CRC32_INIT) : mz_ulong {
    return ffi::mz_crc32(seed, data, len)
}

public func compress_memory(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong, level : CompressionLevel = CompressionLevel.DEFAULT) : int {
    return ffi::mz_compress2(dest, dest_len, source, source_len, level as int)
}

public func compress_memory_default(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong) : int {
    return ffi::mz_compress(dest, dest_len, source, source_len)
}

public func uncompress_memory(dest : *mut u8, dest_len : *mut mz_ulong, source : *u8, source_len : mz_ulong) : int {
    return ffi::mz_uncompress(dest, dest_len, source, source_len)
}

}
