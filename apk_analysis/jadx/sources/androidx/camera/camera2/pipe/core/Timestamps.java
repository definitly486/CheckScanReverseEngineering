package androidx.camera.camera2.pipe.core;

import defpackage.k2;
import defpackage.kv2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Timestamps {
    public static final Timestamps INSTANCE = new Timestamps();

    private Timestamps() {
    }

    /* JADX INFO: renamed from: formatMs-t8DbYm4$default, reason: not valid java name */
    public static /* synthetic */ String m865formatMst8DbYm4$default(Timestamps timestamps, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 3;
        }
        return String.format(null, kv2.b(i, "%.", "f ms"), Arrays.copyOf(new Object[]{Double.valueOf(j / 1000000.0d)}, 1));
    }

    /* JADX INFO: renamed from: measureNow-BzyuS-k$default, reason: not valid java name */
    public static /* synthetic */ long m866measureNowBzyuSk$default(Timestamps timestamps, long j, TimeSource timeSource, int i, Object obj) {
        if ((i & 1) != 0) {
            timeSource = new SystemTimeSource();
        }
        timeSource.getClass();
        return DurationNs.m845constructorimpl(timeSource.mo855nowvQl9yQU() - j);
    }

    /* JADX INFO: renamed from: formatMs-mxdxgDo, reason: not valid java name */
    public final String m867formatMsmxdxgDo(long j) {
        return k2.b(j / 1000000, " ms", new StringBuilder());
    }

    /* JADX INFO: renamed from: formatMs-t8DbYm4, reason: not valid java name */
    public final String m868formatMst8DbYm4(long j, int i) {
        return String.format(null, kv2.b(i, "%.", "f ms"), Arrays.copyOf(new Object[]{Double.valueOf(j / 1000000.0d)}, 1));
    }

    /* JADX INFO: renamed from: formatNs-mxdxgDo, reason: not valid java name */
    public final String m869formatNsmxdxgDo(long j) {
        return ((Object) TimestampNs.m863toStringimpl(j)) + " ns";
    }

    /* JADX INFO: renamed from: formatNs-zYRVrok, reason: not valid java name */
    public final String m870formatNszYRVrok(long j) {
        return ((Object) DurationNs.m852toStringimpl(j)) + " ns";
    }

    /* JADX INFO: renamed from: measureNow-BzyuS-k, reason: not valid java name */
    public final long m871measureNowBzyuSk(long j, TimeSource timeSource) {
        timeSource.getClass();
        return DurationNs.m845constructorimpl(timeSource.mo855nowvQl9yQU() - j);
    }

    /* JADX INFO: renamed from: now-GvorZiw, reason: not valid java name */
    public final long m872nowGvorZiw(TimeSource timeSource) {
        timeSource.getClass();
        return timeSource.mo855nowvQl9yQU();
    }
}
