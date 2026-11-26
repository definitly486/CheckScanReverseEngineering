package androidx.compose.material3;

import androidx.media3.muxer.MuxerUtil;
import defpackage.ah;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderRange {
    public static final Companion Companion = new Companion(null);
    private static final long Unspecified = SliderKt.SliderRange(Float.NaN, Float.NaN);
    private final long packedValue;

    private /* synthetic */ SliderRange(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SliderRange m3913boximpl(long j) {
        return new SliderRange(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m3914constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m3915equalsimpl(long j, Object obj) {
        return (obj instanceof SliderRange) && j == ((SliderRange) obj).m3921unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m3916equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getEndInclusive$annotations() {
    }

    /* JADX INFO: renamed from: getEndInclusive-impl, reason: not valid java name */
    public static final float m3917getEndInclusiveimpl(long j) {
        if (j != Unspecified) {
            return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        ah.f("SliderRange is unspecified");
        return 0.0f;
    }

    public static /* synthetic */ void getStart$annotations() {
    }

    /* JADX INFO: renamed from: getStart-impl, reason: not valid java name */
    public static final float m3918getStartimpl(long j) {
        if (j != Unspecified) {
            return Float.intBitsToFloat((int) (j >> 32));
        }
        ah.f("SliderRange is unspecified");
        return 0.0f;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m3919hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m3920toStringimpl(long j) {
        if (!SliderKt.m3908isSpecifiedIf1S1O4(j)) {
            return "FloatRange.Unspecified";
        }
        return m3918getStartimpl(j) + ".." + m3917getEndInclusiveimpl(j);
    }

    public boolean equals(Object obj) {
        return m3915equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m3919hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m3920toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m3921unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getUnspecified-FYbKRX4$annotations, reason: not valid java name */
        public static /* synthetic */ void m3922getUnspecifiedFYbKRX4$annotations() {
        }

        /* JADX INFO: renamed from: getUnspecified-FYbKRX4, reason: not valid java name */
        public final long m3923getUnspecifiedFYbKRX4() {
            return SliderRange.Unspecified;
        }

        private Companion() {
        }
    }
}
