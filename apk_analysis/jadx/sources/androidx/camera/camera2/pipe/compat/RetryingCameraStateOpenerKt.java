package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.core.DurationNs;

/* JADX INFO: loaded from: classes.dex */
public final class RetryingCameraStateOpenerKt {
    private static final long activeResumeCameraRetryDelayBaseMs = 500;
    private static final long defaultCameraRetryDelayMs = 500;
    private static final long defaultCameraRetryTimeoutNs = DurationNs.m845constructorimpl(10000000000L);
    private static final long activeResumeCameraRetryTimeoutNs = DurationNs.m845constructorimpl(1800000000000L);
    private static final DurationNs[] activeResumeCameraRetryThresholds = {DurationNs.m843boximpl(DurationNs.m845constructorimpl(120000000000L)), DurationNs.m843boximpl(DurationNs.m845constructorimpl(300000000000L))};
}
