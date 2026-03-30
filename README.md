# miniz

Chemical bindings for `miniz`.

## Usage

```chmod
import "chemicallang/miniz"
```

## Example

```chemical
using namespace miniz;

public func main() : int {
    var input = "chemical miniz demo";
    var input_len = strlen(input) as ulong;
    var compressed_cap = compress_bound(input_len);

    var compressed = std::vector<u8>();
    compressed.reserve(compressed_cap as size_t);
    var compressed_len = compressed_cap;

    var rc = compress_memory(compressed.data() as *mut u8, &mut compressed_len, input as *u8, input_len);
    if(!is_ok(rc)) {
        printf("compress failed: %s\n", error_string(rc).data());
        return 1;
    }

    var restored : [128]u8;
    var restored_len = 128ul;
    rc = uncompress_memory(&mut restored[0], &mut restored_len, compressed.data() as *u8, compressed_len);
    if(!is_ok(rc)) {
        printf("uncompress failed: %s\n", error_string(rc).data());
        return 1;
    }

    restored[restored_len as int] = 0u8;
    printf("%s\n", (&restored[0]) as *char);
    return 0;
}
```
