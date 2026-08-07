# Original-media policy

`test.img` in this directory is the immutable acquisition. Extraction scripts also accept a root-level `../test.img` for compatibility, or `GA36_ORIGINAL_IMAGE` to name another read-only acquisition. They write independent copies under `../extract/` and never mount or write the source image.
