load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cpp2sky_dependencies():
    rules_proto()
    skywalking_data_collect_protocol()
    com_github_grpc_grpc()
    com_google_googletest()
    com_google_protobuf()
    com_github_httplib()
    com_github_fmtlib_fmt()
    com_google_abseil()
    com_github_gabime_spdlog()
    bazel_features()
    hedron_compile_commands()

def skywalking_data_collect_protocol():
    http_archive(
        name = "skywalking_data_collect_protocol",
        sha256 = "4cf7cf84a9478a09429a7fbc6ad1e1b10c70eb54999438a36eacaf539a39d343",
        urls = [
            "https://github.com/apache/skywalking-data-collect-protocol/archive/v9.1.0.tar.gz",
        ],
        strip_prefix = "skywalking-data-collect-protocol-9.1.0",
    )

def com_github_grpc_grpc():
    http_archive(
        name = "com_github_grpc_grpc",
        sha256 = "c9f9ae6e4d6f40464ee9958be4068087881ed6aa37e30d0e64d40ed7be39dd01",
        urls = ["https://github.com/grpc/grpc/archive/v1.62.1.tar.gz"],
        strip_prefix = "grpc-1.62.1",
    )

def rules_proto():
    http_archive(
        name = "rules_proto",
        sha256 = "6fb6767d1bef535310547e03247f7518b03487740c11b6c6adb7952033fe1295",
        strip_prefix = "rules_proto-6.0.2",
        urls = [
            "https://github.com/bazelbuild/rules_proto/archive/refs/tags/6.0.2.tar.gz",
        ],
    )

def com_google_googletest():
    http_archive(
        name = "com_google_googletest",
        sha256 = "7b42b4d6ed48810c5362c265a17faebe90dc2373c885e5216439d37927f02926",
        strip_prefix = "googletest-1.15.2",
        urls = ["https://github.com/google/googletest/archive/v1.15.2.tar.gz"],
    )

def com_google_protobuf():
    http_archive(
        name = "com_google_protobuf",
        sha256 = "4fc5ff1b2c339fb86cd3a25f0b5311478ab081e65ad258c6789359cd84d421f8",
        strip_prefix = "protobuf-26.1",
        urls = ["https://github.com/protocolbuffers/protobuf/releases/download/v26.1/protobuf-26.1.tar.gz"],
    )

def com_github_httplib():
    http_archive(
        name = "com_github_httplib",
        sha256 = "0e424f92b607fc9245c144dada85c2e97bc6cc5938c0c69a598a5b2a5c1ab98a",
        strip_prefix = "cpp-httplib-0.7.15",
        build_file = "//bazel:httplib.BUILD",
        urls = ["https://github.com/yhirose/cpp-httplib/archive/v0.7.15.tar.gz"],
    )

def com_github_fmtlib_fmt():
    http_archive(
        name = "com_github_fmtlib_fmt",
        sha256 = "23778bad8edba12d76e4075da06db591f3b0e3c6c04928ced4a7282ca3400e5d",
        strip_prefix = "fmt-8.1.1",
        build_file = "//bazel:fmtlib.BUILD",
        urls = ["https://github.com/fmtlib/fmt/releases/download/8.1.1/fmt-8.1.1.zip"],
    )

def com_github_gabime_spdlog():
    http_archive(
        name = "com_github_gabime_spdlog",
        sha256 = "6fff9215f5cb81760be4cc16d033526d1080427d236e86d70bb02994f85e3d38",
        strip_prefix = "spdlog-1.9.2",
        build_file = "//bazel:spdlog.BUILD",
        urls = ["https://github.com/gabime/spdlog/archive/v1.9.2.tar.gz"],
    )

def com_google_abseil():
    http_archive(
        name = "com_google_absl",
        sha256 = "987ce98f02eefbaf930d6e38ab16aa05737234d7afbab2d5c4ea7adbe50c28ed",
        strip_prefix = "abseil-cpp-20230802.1",
        urls = ["https://github.com/abseil/abseil-cpp/archive/v20230802.1.tar.gz"],
    )

def bazel_features():
    http_archive(
        name = "bazel_features",
        sha256 = "5ac743bf5f05d88e84962e978811f2524df09602b789c92cf7ae2111ecdeda94",
        urls = ["https://github.com/bazel-contrib/bazel_features/releases/download/v1.14.0/bazel_features-v1.14.0.tar.gz"],
        strip_prefix = "bazel_features-1.14.0",
    )

def hedron_compile_commands():
    # Hedron's Compile Commands Extractor for Bazel
    # https://github.com/hedronvision/bazel-compile-commands-extractor
    http_archive(
        name = "hedron_compile_commands",
        url = "https://github.com/hedronvision/bazel-compile-commands-extractor/archive/dc36e462a2468bd79843fe5176542883b8ce4abe.tar.gz",
        sha256 = "d63c1573eb1daa4580155a1f0445992878f4aa8c34eb165936b69504a8407662",
        strip_prefix = "bazel-compile-commands-extractor-dc36e462a2468bd79843fe5176542883b8ce4abe",
    )
