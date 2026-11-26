package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class TouchSlopDetector {
    public static final int $stable = 8;
    private Orientation orientation;
    private long totalPositionChange;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Orientation.values().length];
            try {
                iArr[Orientation.Horizontal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Orientation.Vertical.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ TouchSlopDetector(Orientation orientation, long j, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : orientation, (i & 2) != 0 ? Offset.Companion.m6003getZeroF1C5BW0() : j, null);
    }

    /* JADX INFO: renamed from: calculatePostSlopOffset-tuRUvjQ, reason: not valid java name */
    private final long m1632calculatePostSlopOffsettuRUvjQ(float f) {
        Orientation orientation = this.orientation;
        long j = this.totalPositionChange;
        if (orientation == null) {
            return Offset.m5991minusMKHz9U(this.totalPositionChange, Offset.m5994timestuRUvjQ(Offset.m5982divtuRUvjQ(j, Offset.m5985getDistanceimpl(j)), f));
        }
        float fM1638mainAxisk4lQ0M = m1638mainAxisk4lQ0M(j) - (Math.signum(m1638mainAxisk4lQ0M(this.totalPositionChange)) * f);
        float fM1635crossAxisk4lQ0M = m1635crossAxisk4lQ0M(this.totalPositionChange);
        if (this.orientation != Orientation.Horizontal) {
            return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fM1635crossAxisk4lQ0M)) << 32) | (((long) Float.floatToRawIntBits(fM1638mainAxisk4lQ0M)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        return Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fM1635crossAxisk4lQ0M)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(fM1638mainAxisk4lQ0M) << 32));
    }

    /* JADX INFO: renamed from: getPostSlopOffset-qto3Fdw$default, reason: not valid java name */
    public static /* synthetic */ long m1633getPostSlopOffsetqto3Fdw$default(TouchSlopDetector touchSlopDetector, long j, float f, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return touchSlopDetector.m1636getPostSlopOffsetqto3Fdw(j, f, z);
    }

    /* JADX INFO: renamed from: reset-k-4lQ0M$default, reason: not valid java name */
    public static /* synthetic */ void m1634resetk4lQ0M$default(TouchSlopDetector touchSlopDetector, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = Offset.Companion.m6003getZeroF1C5BW0();
        }
        touchSlopDetector.m1639resetk4lQ0M(j);
    }

    /* JADX INFO: renamed from: crossAxis-k-4lQ0M, reason: not valid java name */
    public final float m1635crossAxisk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : j >> 32));
    }

    public final Orientation getOrientation() {
        return this.orientation;
    }

    /* JADX INFO: renamed from: getPostSlopOffset-qto3Fdw, reason: not valid java name */
    public final long m1636getPostSlopOffsetqto3Fdw(long j, float f, boolean z) {
        long jM5992plusMKHz9U;
        long j2 = this.totalPositionChange;
        if (z) {
            jM5992plusMKHz9U = Offset.m5992plusMKHz9U(j2, j);
            this.totalPositionChange = jM5992plusMKHz9U;
        } else {
            jM5992plusMKHz9U = Offset.m5992plusMKHz9U(j2, j);
        }
        return (this.orientation == null ? Offset.m5985getDistanceimpl(jM5992plusMKHz9U) : Math.abs(m1638mainAxisk4lQ0M(jM5992plusMKHz9U))) >= f ? m1632calculatePostSlopOffsettuRUvjQ(f) : Offset.Companion.m6002getUnspecifiedF1C5BW0();
    }

    /* JADX INFO: renamed from: isDeltaAtAngleOfInterest-k-4lQ0M, reason: not valid java name */
    public final boolean m1637isDeltaAtAngleOfInterestk4lQ0M(long j) {
        long jM5992plusMKHz9U = Offset.m5992plusMKHz9U(this.totalPositionChange, j);
        double dAtan2 = ((double) (((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (jM5992plusMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), Math.abs(Float.intBitsToFloat((int) (jM5992plusMKHz9U >> 32))))) * 180.0f)) / 3.141592653589793d;
        Orientation orientation = this.orientation;
        int i = orientation == null ? -1 : WhenMappings.$EnumSwitchMapping$0[orientation.ordinal()];
        if (i != 1) {
            return i == 2 && dAtan2 > 30.0d;
        }
        return dAtan2 < 30.0d;
    }

    /* JADX INFO: renamed from: mainAxis-k-4lQ0M, reason: not valid java name */
    public final float m1638mainAxisk4lQ0M(long j) {
        return Float.intBitsToFloat((int) (this.orientation == Orientation.Horizontal ? j >> 32 : j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: reset-k-4lQ0M, reason: not valid java name */
    public final void m1639resetk4lQ0M(long j) {
        this.totalPositionChange = j;
    }

    public final void setOrientation(Orientation orientation) {
        this.orientation = orientation;
    }

    private TouchSlopDetector(Orientation orientation, long j) {
        this.orientation = orientation;
        this.totalPositionChange = j;
    }

    public /* synthetic */ TouchSlopDetector(Orientation orientation, long j, jh2 jh2Var) {
        this(orientation, j);
    }
}
