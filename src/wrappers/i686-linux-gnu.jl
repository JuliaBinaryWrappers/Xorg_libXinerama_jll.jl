# Autogenerated wrapper script for Xorg_libXinerama_jll for i686-linux-gnu
export libXinerama

using Xorg_libXext_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libXinerama`
const libXinerama_splitpath = ["lib", "libXinerama.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXinerama_path = ""

# libXinerama-specific global declaration
# This will be filled out by __init__()
libXinerama_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXinerama = "libXinerama.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Xorg_libXinerama")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (Xorg_libXext_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (Xorg_libXext_jll.LIBPATH_list,))

    global libXinerama_path = normpath(joinpath(artifact_dir, libXinerama_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXinerama_handle = dlopen(libXinerama_path)
    push!(LIBPATH_list, dirname(libXinerama_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

