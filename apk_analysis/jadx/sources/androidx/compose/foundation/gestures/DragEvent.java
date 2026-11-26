package androidx.compose.foundation.gestures;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public abstract class DragEvent {
    public static final int $stable = 0;

    public static final class DragCancelled extends DragEvent {
        public static final int $stable = 0;
        public static final DragCancelled INSTANCE = new DragCancelled();

        private DragCancelled() {
            super(null);
        }
    }

    public /* synthetic */ DragEvent(jh2 jh2Var) {
        this();
    }

    private DragEvent() {
    }

    public static final class DragStarted extends DragEvent {
        public static final int $stable = 0;
        private final long startPoint;

        private DragStarted(long j) {
            super(null);
            this.startPoint = j;
        }

        /* JADX INFO: renamed from: getStartPoint-F1C5BW0, reason: not valid java name */
        public final long m1487getStartPointF1C5BW0() {
            return this.startPoint;
        }

        public /* synthetic */ DragStarted(long j, jh2 jh2Var) {
            this(j);
        }
    }

    public static final class DragDelta extends DragEvent {
        public static final int $stable = 0;
        private final long delta;
        private final boolean isIndirectPointerEvent;

        private DragDelta(long j, boolean z) {
            super(null);
            this.delta = j;
            this.isIndirectPointerEvent = z;
        }

        /* JADX INFO: renamed from: getDelta-F1C5BW0, reason: not valid java name */
        public final long m1486getDeltaF1C5BW0() {
            return this.delta;
        }

        public final boolean isIndirectPointerEvent() {
            return this.isIndirectPointerEvent;
        }

        public /* synthetic */ DragDelta(long j, boolean z, jh2 jh2Var) {
            this(j, z);
        }
    }

    public static final class DragStopped extends DragEvent {
        public static final int $stable = 0;
        private final boolean isIndirectPointerEvent;
        private final long velocity;

        private DragStopped(long j, boolean z) {
            super(null);
            this.velocity = j;
            this.isIndirectPointerEvent = z;
        }

        /* JADX INFO: renamed from: getVelocity-9UxMQ8M, reason: not valid java name */
        public final long m1488getVelocity9UxMQ8M() {
            return this.velocity;
        }

        public final boolean isIndirectPointerEvent() {
            return this.isIndirectPointerEvent;
        }

        public /* synthetic */ DragStopped(long j, boolean z, jh2 jh2Var) {
            this(j, z);
        }
    }
}
