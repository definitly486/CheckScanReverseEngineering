package androidx.collection;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class PackingUtilsKt {
    public static final long packFloats(float f, float f2) {
        return (((long) Float.floatToRawIntBits(f2)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final long packInts(int i, int i2) {
        return (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
    }
}
