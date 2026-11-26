package androidx.compose.ui.text;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextRange {
    public static final Companion Companion = new Companion(null);
    private static final long Zero = TextRangeKt.TextRange(0);
    private final long packedValue;

    private /* synthetic */ TextRange(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextRange m8479boximpl(long j) {
        return new TextRange(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m8480constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: contains-5zc-tL8, reason: not valid java name */
    public static final boolean m8481contains5zctL8(long j, long j2) {
        return (m8489getMinimpl(j) <= m8489getMinimpl(j2)) & (m8488getMaximpl(j2) <= m8488getMaximpl(j));
    }

    /* JADX INFO: renamed from: contains-impl, reason: not valid java name */
    public static final boolean m8482containsimpl(long j, int i) {
        return i < m8488getMaximpl(j) && m8489getMinimpl(j) <= i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8483equalsimpl(long j, Object obj) {
        return (obj instanceof TextRange) && j == ((TextRange) obj).m8495unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8484equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getCollapsed-impl, reason: not valid java name */
    public static final boolean m8485getCollapsedimpl(long j) {
        return m8491getStartimpl(j) == m8486getEndimpl(j);
    }

    /* JADX INFO: renamed from: getEnd-impl, reason: not valid java name */
    public static final int m8486getEndimpl(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: getLength-impl, reason: not valid java name */
    public static final int m8487getLengthimpl(long j) {
        return m8488getMaximpl(j) - m8489getMinimpl(j);
    }

    /* JADX INFO: renamed from: getMax-impl, reason: not valid java name */
    public static final int m8488getMaximpl(long j) {
        return Math.max(m8491getStartimpl(j), m8486getEndimpl(j));
    }

    /* JADX INFO: renamed from: getMin-impl, reason: not valid java name */
    public static final int m8489getMinimpl(long j) {
        return Math.min(m8491getStartimpl(j), m8486getEndimpl(j));
    }

    /* JADX INFO: renamed from: getReversed-impl, reason: not valid java name */
    public static final boolean m8490getReversedimpl(long j) {
        return m8491getStartimpl(j) > m8486getEndimpl(j);
    }

    /* JADX INFO: renamed from: getStart-impl, reason: not valid java name */
    public static final int m8491getStartimpl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8492hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: intersects-5zc-tL8, reason: not valid java name */
    public static final boolean m8493intersects5zctL8(long j, long j2) {
        return (m8489getMinimpl(j) < m8488getMaximpl(j2)) & (m8489getMinimpl(j2) < m8488getMaximpl(j));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8494toStringimpl(long j) {
        return "TextRange(" + m8491getStartimpl(j) + ", " + m8486getEndimpl(j) + ')';
    }

    public boolean equals(Object obj) {
        return m8483equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m8492hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m8494toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m8495unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getZero-d9O1mEE, reason: not valid java name */
        public final long m8496getZerod9O1mEE() {
            return TextRange.Zero;
        }

        private Companion() {
        }
    }
}
