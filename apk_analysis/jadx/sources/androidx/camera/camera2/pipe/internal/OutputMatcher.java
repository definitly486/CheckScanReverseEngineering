package androidx.camera.camera2.pipe.internal;

import defpackage.jh2;
import defpackage.kt;
import defpackage.ot;

/* JADX INFO: loaded from: classes.dex */
public final class OutputMatcher {
    private static final long DEFAULT_ERROR_NS = 8333333;
    private static final long ERROR_DETECTION_FPS = 60;
    private static final long NS_PER_SECOND = 1000000000;
    private final ot<Long> currentOffset;
    private final long errorDelta;
    public static final Companion Companion = new Companion(null);
    private static final OutputMatcher EXACT = new OutputMatcher(0, 0);

    public OutputMatcher(long j, long j2) {
        this.errorDelta = j2;
        this.currentOffset = kt.d(Long.valueOf(j));
    }

    public final boolean fuzzyEqual(long j, long j2) {
        long jLongValue = this.currentOffset.b.longValue();
        long j3 = (j - j2) + jLongValue;
        if (j3 == 0) {
            return true;
        }
        long j4 = this.errorDelta;
        if (j4 == 0 || j3 >= j4 || j3 <= (-j4)) {
            return false;
        }
        this.currentOffset.a(Long.valueOf(jLongValue), Long.valueOf(jLongValue - j3));
        return true;
    }

    public final boolean fuzzyGreaterThan(long j, long j2) {
        return !fuzzyLessThanOrEqual(j, j2);
    }

    public final boolean fuzzyGreaterThanOrEqual(long j, long j2) {
        return !fuzzyLessThan(j, j2);
    }

    public final boolean fuzzyLessThan(long j, long j2) {
        return ((j2 - j) - this.currentOffset.b.longValue()) + this.errorDelta < 0;
    }

    public final boolean fuzzyLessThanOrEqual(long j, long j2) {
        return ((j2 - j) - this.currentOffset.b.longValue()) - this.errorDelta <= 0;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ OutputMatcher forTimestampsWithOffset$default(Companion companion, long j, long j2, int i, Object obj) {
            if ((i & 2) != 0) {
                j2 = OutputMatcher.DEFAULT_ERROR_NS;
            }
            return companion.forTimestampsWithOffset(j, j2);
        }

        public final OutputMatcher forTimestampsWithOffset(long j, long j2) {
            return new OutputMatcher(j, j2);
        }

        public final OutputMatcher getEXACT() {
            return OutputMatcher.EXACT;
        }

        private Companion() {
        }
    }

    public /* synthetic */ OutputMatcher(long j, long j2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? 0L : j, j2);
    }
}
