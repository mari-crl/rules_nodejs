"""Info for the esbuild packages used"""

### These values are updated automaticly via `yarn update-esbuild-versions`
_VERSION = "0.14.32"
_DARWIN_AMD64_SHA = "1cc3ef221a91e3c6ba66c1fb33711f04669ad3a4a840d3e9c373c19305d1de00"
_DARWIN_ARM64_SHA = "25767fc0f052e65a46e65783cb27a612f9b759035b5fddde87d237a114af30ea"
_LINUX_AMD64_SHA = "bf32c065e2b239917affaabcad2210e4d3d9180e6ef6f7693001efebbd775880"
_LINUX_ARM64_SHA = "e2453a2d5e2675d4925e5eef4aa5ad30fcb35ec18c1ed860377906cbaab67444"
_WINDOWS_AMD64_SHA = "a38e0f71c0268fc153667a600ee00dde752f60f8d20283d82b7b6f235d25c54c"

ESBUILD_PACKAGES = struct(
    version = _VERSION,
    platforms = dict({
        "darwin_amd64": struct(
            sha = _DARWIN_AMD64_SHA,
            urls = [
                "https://registry.npmjs.org/esbuild-darwin-64/-/esbuild-darwin-64-%s.tgz" % _VERSION,
            ],
            binary_path = "bin/esbuild",
            exec_compatible_with = [
                "@platforms//os:macos",
                "@platforms//cpu:x86_64",
            ],
        ),
        "darwin_arm64": struct(
            sha = _DARWIN_ARM64_SHA,
            urls = [
                "https://registry.npmjs.org/esbuild-darwin-arm64/-/esbuild-darwin-arm64-%s.tgz" % _VERSION,
            ],
            binary_path = "bin/esbuild",
            exec_compatible_with = [
                "@platforms//os:macos",
                "@platforms//cpu:aarch64",
            ],
        ),
        "linux_amd64": struct(
            sha = _LINUX_AMD64_SHA,
            urls = [
                "https://registry.npmjs.org/esbuild-linux-64/-/esbuild-linux-64-%s.tgz" % _VERSION,
            ],
            binary_path = "bin/esbuild",
            exec_compatible_with = [
                "@platforms//os:linux",
                "@platforms//cpu:x86_64",
            ],
        ),
        "linux_arm64": struct(
            sha = _LINUX_ARM64_SHA,
            urls = [
                "https://registry.npmjs.org/esbuild-linux-arm64/-/esbuild-linux-arm64-%s.tgz" % _VERSION,
            ],
            binary_path = "bin/esbuild",
            exec_compatible_with = [
                "@platforms//os:linux",
                "@platforms//cpu:aarch64",
            ],
        ),
        "windows_amd64": struct(
            sha = _WINDOWS_AMD64_SHA,
            urls = [
                "https://registry.npmjs.org/esbuild-windows-64/-/esbuild-windows-64-%s.tgz" % _VERSION,
            ],
            binary_path = "esbuild.exe",
            exec_compatible_with = [
                "@platforms//os:windows",
                "@platforms//cpu:x86_64",
            ],
        ),
    }),
)
