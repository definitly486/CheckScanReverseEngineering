package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.unit.VelocityKt;

/* JADX INFO: loaded from: classes2.dex */
public final class VelocityTracker {
    public static final int $stable = 8;
    private final PlatformVelocityTracker platformVelocityTracker = PlatformVelocityTracker_androidKt.PlatformVelocityTracker();

    /* JADX INFO: renamed from: addPosition-Uv8p0NA, reason: not valid java name */
    public final void m7675addPositionUv8p0NA(long j, long j2) {
        this.platformVelocityTracker.mo7666addPositionUv8p0NA(j, j2);
    }

    /* JADX INFO: renamed from: calculateVelocity-9UxMQ8M, reason: not valid java name */
    public final long m7676calculateVelocity9UxMQ8M() {
        return m7677calculateVelocityAH228Gc(VelocityKt.Velocity(Float.MAX_VALUE, Float.MAX_VALUE));
    }

    /* JADX INFO: renamed from: calculateVelocity-AH228Gc, reason: not valid java name */
    public final long m7677calculateVelocityAH228Gc(long j) {
        return this.platformVelocityTracker.mo7667calculateVelocityAH228Gc(j);
    }

    public final PlatformVelocityTracker getPlatformVelocityTracker$ui() {
        return this.platformVelocityTracker;
    }

    public final void resetTracking() {
        this.platformVelocityTracker.resetTracking();
    }
}
