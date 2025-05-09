# Autogenerated wrapper script for Xorg_libXinerama_jll for armv6l-linux-gnueabihf
export libXinerama

using Xorg_libXext_jll
JLLWrappers.@generate_wrapper_header("Xorg_libXinerama")
JLLWrappers.@declare_library_product(libXinerama, "libXinerama.so.1")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_libXext_jll)
    JLLWrappers.@init_library_product(
        libXinerama,
        "lib/libXinerama.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
