package androidx.compose.runtime.collection;

/* JADX INFO: loaded from: classes.dex */
public final class ArrayUtils_androidKt {
    public static final <T> T[] fastCopyInto(T[] tArr, T[] tArr2, int i, int i2, int i3) {
        System.arraycopy(tArr, i2, tArr2, i, i3 - i2);
        return tArr2;
    }
}
