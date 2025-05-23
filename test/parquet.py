import cudf
import cupy

class TestManager:
    def __init__(self):
        print(cudf.__version__)

        self.file_path = "/mnt/nvme/cudf_test.bin"
        self.num_rows = int(2 * 10**8)
        cupy.random.seed(2077)
        self.df = cudf.DataFrame({"a": cupy.random.rand(self.num_rows)})

    def _write(self):
        print("--> Write")
        self.df.to_parquet(self.file_path,
                           compression="snappy",
                           column_encoding="PLAIN")

    def _read(self):
        print("--> Read")
        _ = cudf.read_parquet(self.file_path)

    def perform_test(self):
        self._write()
        self._read()

if __name__ == "__main__":
    tm = TestManager()
    tm.perform_test()
