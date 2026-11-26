package androidx.compose.foundation.layout;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class FlexBasis {
    private static final long TypeAuto = 0;
    private static final long TypeDp = 1;
    private static final long TypePercent = 2;
    private static final int TypeShift = 32;
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Auto = m1817constructorimpl(0);

    private /* synthetic */ FlexBasis(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FlexBasis m1816boximpl(long j) {
        return new FlexBasis(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1817constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1818equalsimpl(long j, Object obj) {
        return (obj instanceof FlexBasis) && j == ((FlexBasis) obj).m1826unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1819equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    /* JADX INFO: renamed from: getValue-impl$foundation_layout, reason: not valid java name */
    public static final float m1820getValueimpl$foundation_layout(long j) {
        return Float.intBitsToFloat((int) j);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1821hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isAuto-impl$foundation_layout, reason: not valid java name */
    public static final boolean m1822isAutoimpl$foundation_layout(long j) {
        return (j >>> 32) == 0;
    }

    /* JADX INFO: renamed from: isDp-impl$foundation_layout, reason: not valid java name */
    public static final boolean m1823isDpimpl$foundation_layout(long j) {
        return (j >>> 32) == 1;
    }

    /* JADX INFO: renamed from: isPercent-impl$foundation_layout, reason: not valid java name */
    public static final boolean m1824isPercentimpl$foundation_layout(long j) {
        return (j >>> 32) == TypePercent;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1825toStringimpl(long j) {
        if (m1822isAutoimpl$foundation_layout(j)) {
            return "FlexBasis.Auto";
        }
        if (m1823isDpimpl$foundation_layout(j)) {
            return "FlexBasis.Dp(" + m1820getValueimpl$foundation_layout(j) + ".dp)";
        }
        if (!m1824isPercentimpl$foundation_layout(j)) {
            return "FlexBasis.Unknown";
        }
        return "FlexBasis.Percent(" + w65.b(m1820getValueimpl$foundation_layout(j) * 100.0f) + "%)";
    }

    public boolean equals(Object obj) {
        return m1818equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m1821hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m1825toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1826unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: Dp-cHuBJEI, reason: not valid java name */
        public final long m1827DpcHuBJEI(float f) {
            return FlexBasis.m1817constructorimpl((((long) Float.floatToIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | 4294967296L);
        }

        /* JADX INFO: renamed from: Percent-uoj9tHE, reason: not valid java name */
        public final long m1828Percentuoj9tHE(float f) {
            return FlexBasis.m1817constructorimpl((((long) Float.floatToIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | 8589934592L);
        }

        /* JADX INFO: renamed from: getAuto-d-lZNVs, reason: not valid java name */
        public final long m1829getAutodlZNVs() {
            return FlexBasis.Auto;
        }

        private Companion() {
        }
    }
}
