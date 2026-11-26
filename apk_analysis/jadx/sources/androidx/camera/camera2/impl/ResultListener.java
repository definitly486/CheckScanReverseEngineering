package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.xp1;
import defpackage.yp1;

/* JADX INFO: loaded from: classes.dex */
public final class ResultListener implements Request.Listener {
    private final nl3<FrameInfo, Boolean> checker;
    private final xp1<FrameInfo> completeSignal;
    private final long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    /* JADX WARN: Multi-variable type inference failed */
    public ResultListener(long j, nl3<? super FrameInfo, Boolean> nl3Var) {
        nl3Var.getClass();
        this.timeLimitNs = j;
        this.checker = nl3Var;
        this.completeSignal = new yp1();
    }

    public final mk2<FrameInfo> getResult() {
        return this.completeSignal;
    }

    @Override // androidx.camera.camera2.pipe.Request.Listener
    /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
    public void mo11onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo) {
        requestMetadata.getClass();
        frameInfo.getClass();
        if (this.completeSignal.P() || this.completeSignal.isCancelled()) {
            return;
        }
        FrameMetadata metadata = frameInfo.getMetadata();
        CaptureResult.Key key = CaptureResult.SENSOR_TIMESTAMP;
        key.getClass();
        Long l = (Long) metadata.get(key);
        if (l != null && this.timestampOfFirstUpdateNs == null) {
            this.timestampOfFirstUpdateNs = l;
        }
        Long l2 = this.timestampOfFirstUpdateNs;
        if (this.timeLimitNs == 0 || l2 == null || l == null || l.longValue() - l2.longValue() <= this.timeLimitNs) {
            if (this.checker.invoke(frameInfo).booleanValue()) {
                this.completeSignal.f(frameInfo);
                return;
            }
            return;
        }
        this.completeSignal.f(null);
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Wait for capture result timeout, current: " + l.longValue() + " first: " + l2.longValue());
        }
    }
}
