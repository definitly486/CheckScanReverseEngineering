package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class w25 extends qt {
    public w25(vx5 vx5Var, long j, long j2) {
        super(new lt(), new v25(vx5Var), j, j + 1, 0L, j2, 188L, 1000);
    }

    public static int a(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
