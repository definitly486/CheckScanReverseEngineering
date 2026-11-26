package androidx.camera.camera2.pipe.core;

import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class DurationNs {
    public static final Companion Companion = new Companion(null);
    private final long value;

    private /* synthetic */ DurationNs(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DurationNs m843boximpl(long j) {
        return new DurationNs(j);
    }

    /* JADX INFO: renamed from: compareTo-zYRVrok, reason: not valid java name */
    public static final int m844compareTozYRVrok(long j, long j2) {
        if (j == j2) {
            return 0;
        }
        return j < j2 ? -1 : 1;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m845constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m846equalsimpl(long j, Object obj) {
        return (obj instanceof DurationNs) && j == ((DurationNs) obj).m853unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m847equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m848hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: minus-AUCehY4, reason: not valid java name */
    public static final long m849minusAUCehY4(long j, long j2) {
        return m845constructorimpl(j - j2);
    }

    /* JADX INFO: renamed from: plus-AUCehY4, reason: not valid java name */
    public static final long m850plusAUCehY4(long j, long j2) {
        return m845constructorimpl(j + j2);
    }

    /* JADX INFO: renamed from: plus-OxkKeMI, reason: not valid java name */
    public static final long m851plusOxkKeMI(long j, long j2) {
        return TimestampNs.m857constructorimpl(j + j2);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m852toStringimpl(long j) {
        return rg.g("DurationNs(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m846equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m848hashCodeimpl(this.value);
    }

    public String toString() {
        return m852toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m853unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: fromMs-wRu4V9A, reason: not valid java name */
        public final long m854fromMswRu4V9A(long j) {
            return DurationNs.m845constructorimpl(j * 1000000);
        }

        private Companion() {
        }
    }
}
