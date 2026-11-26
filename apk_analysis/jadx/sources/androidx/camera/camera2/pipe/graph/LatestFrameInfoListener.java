package androidx.camera.camera2.pipe.graph;

import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LatestFrameInfoListener implements Request.Listener {
    private long latestFrameNumber;
    private final nl3<FrameInfo, j59> onNextFrameInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public LatestFrameInfoListener(nl3<? super FrameInfo, j59> nl3Var) {
        nl3Var.getClass();
        this.onNextFrameInfo = nl3Var;
        this.latestFrameNumber = Long.MIN_VALUE;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        if (requestMetadata.getRequest().getInputRequest() != null) {
            return;
        }
        synchronized (this) {
            try {
                if (frameInfo.mo66getFrameNumberUgla2oM() > this.latestFrameNumber) {
                    this.latestFrameNumber = frameInfo.mo66getFrameNumberUgla2oM();
                    this.onNextFrameInfo.invoke(frameInfo);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
