package androidx.compose.foundation.gestures;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
abstract class TransformEvent {

    public static final class TransformStarted extends TransformEvent {
        public static final int $stable = 0;
        public static final TransformStarted INSTANCE = new TransformStarted();

        private TransformStarted() {
            super(null);
        }
    }

    public static final class TransformStopped extends TransformEvent {
        public static final int $stable = 0;
        public static final TransformStopped INSTANCE = new TransformStopped();

        private TransformStopped() {
            super(null);
        }
    }

    public /* synthetic */ TransformEvent(jh2 jh2Var) {
        this();
    }

    private TransformEvent() {
    }

    public static final class TransformDelta extends TransformEvent {
        public static final int $stable = 0;
        private final long centroid;
        private final long panChange;
        private final float rotationChange;
        private final float zoomChange;

        private TransformDelta(long j, float f, long j2, float f2) {
            super(null);
            this.centroid = j;
            this.zoomChange = f;
            this.panChange = j2;
            this.rotationChange = f2;
        }

        /* JADX INFO: renamed from: getCentroid-F1C5BW0, reason: not valid java name */
        public final long m1642getCentroidF1C5BW0() {
            return this.centroid;
        }

        /* JADX INFO: renamed from: getPanChange-F1C5BW0, reason: not valid java name */
        public final long m1643getPanChangeF1C5BW0() {
            return this.panChange;
        }

        public final float getRotationChange() {
            return this.rotationChange;
        }

        public final float getZoomChange() {
            return this.zoomChange;
        }

        public /* synthetic */ TransformDelta(long j, float f, long j2, float f2, jh2 jh2Var) {
            this(j, f, j2, f2);
        }
    }
}
