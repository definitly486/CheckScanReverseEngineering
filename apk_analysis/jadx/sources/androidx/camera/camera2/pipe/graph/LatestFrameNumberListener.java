package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LatestFrameNumberListener implements Request.Listener {
    private long latestFrameNumber;
    private final nl3<FrameNumber, j59> onNextFrameNumber;

    /* JADX WARN: Multi-variable type inference failed */
    public LatestFrameNumberListener(nl3<? super FrameNumber, j59> nl3Var) {
        nl3Var.getClass();
        this.onNextFrameNumber = nl3Var;
        this.latestFrameNumber = Long.MIN_VALUE;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onStarted-uGKBvU4 */
    public void mo44onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2) {
        requestMetadata.getClass();
        if (requestMetadata.getRequest().getInputRequest() != null) {
            return;
        }
        synchronized (this) {
            try {
                if (j > this.latestFrameNumber) {
                    this.latestFrameNumber = j;
                    this.onNextFrameNumber.invoke(FrameNumber.m463boximpl(j));
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
