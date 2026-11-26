package androidx.camera.camera2.pipe.core;

import android.os.SystemClock;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class SystemClockOffsets {
    public static final Companion Companion = new Companion(null);
    private static final int MEASUREMENT_ITERATIONS = 3;
    private static final long NS_PER_MS = 1000000;
    private static final long NS_PER_MS_X_2 = 2000000;
    private final long realtimeNsToMonotonicNs;
    private final long realtimeNsToUtcMs;

    private SystemClockOffsets(long j, long j2) {
        this.realtimeNsToUtcMs = j;
        this.realtimeNsToMonotonicNs = j2;
    }

    public static final SystemClockOffsets estimate() {
        return Companion.estimate();
    }

    private static final long estimateRealtimeNsToMonotonicNs() {
        return Companion.estimateRealtimeNsToMonotonicNs();
    }

    private static final long estimateRealtimeNsToUtcMs() {
        return Companion.estimateRealtimeNsToUtcMs();
    }

    public static final SystemClockOffsets fixed(long j, long j2) {
        return Companion.fixed(j, j2);
    }

    public static final long monotonicMsToRealtimeMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicMsToRealtimeMs(systemClockOffsets, j);
    }

    public static final long monotonicMsToRealtimeNs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicMsToRealtimeNs(systemClockOffsets, j);
    }

    public static final long monotonicMsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicMsToUtcMs(systemClockOffsets, j);
    }

    public static final long monotonicNsToRealtimeMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicNsToRealtimeMs(systemClockOffsets, j);
    }

    public static final long monotonicNsToRealtimeNs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicNsToRealtimeNs(systemClockOffsets, j);
    }

    public static final long monotonicNsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.monotonicNsToUtcMs(systemClockOffsets, j);
    }

    public static final long realtimeMsToMonotonicMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeMsToMonotonicMs(systemClockOffsets, j);
    }

    public static final long realtimeMsToMonotonicNs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeMsToMonotonicNs(systemClockOffsets, j);
    }

    public static final long realtimeMsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeMsToUtcMs(systemClockOffsets, j);
    }

    public static final long realtimeNsToMonotonicMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeNsToMonotonicMs(systemClockOffsets, j);
    }

    public static final long realtimeNsToMonotonicNs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeNsToMonotonicNs(systemClockOffsets, j);
    }

    public static final long realtimeNsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
        return Companion.realtimeNsToUtcMs(systemClockOffsets, j);
    }

    public final long getRealtimeNsToMonotonicNs() {
        return this.realtimeNsToMonotonicNs;
    }

    public final long getRealtimeNsToUtcMs() {
        return this.realtimeNsToUtcMs;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long estimateRealtimeNsToMonotonicNs() {
            long j = Long.MAX_VALUE;
            long j2 = 0;
            for (int i = 0; i < 3; i++) {
                long jNanoTime = System.nanoTime();
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long jNanoTime2 = System.nanoTime();
                long j3 = jNanoTime2 - jNanoTime;
                if (j3 < j) {
                    j2 = jElapsedRealtimeNanos - ((jNanoTime + jNanoTime2) / 2);
                    j = j3;
                }
            }
            return j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long estimateRealtimeNsToUtcMs() {
            long j = Long.MAX_VALUE;
            long j2 = 0;
            for (int i = 0; i < 3; i++) {
                long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtimeNanos2 = SystemClock.elapsedRealtimeNanos();
                long j3 = jElapsedRealtimeNanos2 - jElapsedRealtimeNanos;
                if (j3 < j) {
                    j2 = ((jElapsedRealtimeNanos + jElapsedRealtimeNanos2) / 2000000) - jCurrentTimeMillis;
                    j = j3;
                }
            }
            return j2;
        }

        public final SystemClockOffsets estimate() {
            return new SystemClockOffsets(estimateRealtimeNsToUtcMs(), estimateRealtimeNsToMonotonicNs(), null);
        }

        public final SystemClockOffsets fixed(long j, long j2) {
            return new SystemClockOffsets(j, j2, null);
        }

        public final long monotonicMsToRealtimeMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return monotonicMsToRealtimeNs(systemClockOffsets, j) / 1000000;
        }

        public final long monotonicMsToRealtimeNs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return (j * 1000000) + systemClockOffsets.getRealtimeNsToMonotonicNs();
        }

        public final long monotonicMsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return realtimeNsToUtcMs(systemClockOffsets, monotonicMsToRealtimeNs(systemClockOffsets, j));
        }

        public final long monotonicNsToRealtimeMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return monotonicNsToRealtimeNs(systemClockOffsets, j) / 1000000;
        }

        public final long monotonicNsToRealtimeNs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return systemClockOffsets.getRealtimeNsToMonotonicNs() + j;
        }

        public final long monotonicNsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return realtimeNsToUtcMs(systemClockOffsets, monotonicNsToRealtimeNs(systemClockOffsets, j));
        }

        public final long realtimeMsToMonotonicMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return realtimeMsToMonotonicNs(systemClockOffsets, j) / 1000000;
        }

        public final long realtimeMsToMonotonicNs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return (j * 1000000) - systemClockOffsets.getRealtimeNsToMonotonicNs();
        }

        public final long realtimeMsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return j - systemClockOffsets.getRealtimeNsToUtcMs();
        }

        public final long realtimeNsToMonotonicMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return realtimeNsToMonotonicNs(systemClockOffsets, j) / 1000000;
        }

        public final long realtimeNsToMonotonicNs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return j - systemClockOffsets.getRealtimeNsToMonotonicNs();
        }

        public final long realtimeNsToUtcMs(SystemClockOffsets systemClockOffsets, long j) {
            systemClockOffsets.getClass();
            return (j / 1000000) - systemClockOffsets.getRealtimeNsToUtcMs();
        }

        private Companion() {
        }
    }

    public /* synthetic */ SystemClockOffsets(long j, long j2, jh2 jh2Var) {
        this(j, j2);
    }
}
