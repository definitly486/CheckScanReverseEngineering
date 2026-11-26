package androidx.compose.runtime.composer.linkbuffer;

import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class GroupHandleKt {
    public static final long NULL_GROUP_HANDLE = -1;

    public static final int getContext(long j) {
        return (int) (j >>> 32);
    }

    public static final int getGroup(long j) {
        return (int) j;
    }

    public static final long makeGroupHandle(int i, int i2, int i3) {
        long j;
        long j2 = MuxerUtil.UNSIGNED_INT_MAX_VALUE;
        if (i3 >= 0) {
            j = ((long) i2) << 32;
            j2 = MuxerUtil.UNSIGNED_INT_MAX_VALUE & ((long) i3);
        } else {
            j = ((long) i) << 32;
        }
        return j | j2;
    }

    public static final long makeGroupHandle(int i, int i2) {
        return (((long) i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) i) << 32);
    }
}
