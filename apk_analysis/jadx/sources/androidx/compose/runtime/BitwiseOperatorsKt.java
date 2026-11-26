package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class BitwiseOperatorsKt {
    public static final int rol(int i, int i2) {
        return Integer.rotateLeft(i, i2);
    }

    public static final int ror(int i, int i2) {
        return Integer.rotateRight(i, i2);
    }

    public static final long rol(long j, int i) {
        return Long.rotateLeft(j, i);
    }

    public static final long ror(long j, int i) {
        return Long.rotateRight(j, i);
    }
}
