package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.input.pointer.PointerInputChange;

/* JADX INFO: loaded from: classes2.dex */
public interface PlatformVelocityTracker {
    /* JADX INFO: renamed from: addPointerInputChange-Uv8p0NA */
    void mo7665addPointerInputChangeUv8p0NA(PointerInputChange pointerInputChange, long j);

    /* JADX INFO: renamed from: addPosition-Uv8p0NA */
    void mo7666addPositionUv8p0NA(long j, long j2);

    /* JADX INFO: renamed from: calculateVelocity-AH228Gc */
    long mo7667calculateVelocityAH228Gc(long j);

    void resetTracking();
}
