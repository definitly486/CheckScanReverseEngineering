package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.FrameMetadata;
import androidx.camera.camera2.pipe.FrameNumber;
import androidx.camera.camera2.pipe.RequestNumber;
import androidx.camera.camera2.pipe.Result3A;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.xp1;
import defpackage.yp1;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Result3AStateListenerImpl implements Result3AStateListener {
    private final xp1<Result3A> _result;
    private final nl3<FrameMetadata, Boolean> exitCondition;
    private final Integer frameLimit;
    private volatile FrameNumber frameNumberOfFirstUpdate;
    private RequestNumber initialRequestNumber;
    private final Long timeLimitNs;
    private volatile Long timestampOfFirstUpdateNs;

    /* JADX WARN: Multi-variable type inference failed */
    public Result3AStateListenerImpl(nl3<? super FrameMetadata, Boolean> nl3Var, Integer num, Long l) {
        nl3Var.getClass();
        this.exitCondition = nl3Var;
        this.frameLimit = num;
        this.timeLimitNs = l;
        this._result = new yp1();
    }

    public final mk2<Result3A> getResult() {
        return this._result;
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphShutdown() {
        this._result.f(new Result3A(Result3A.Status.Companion.m667getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onGraphStopped() {
        this._result.f(new Result3A(Result3A.Status.Companion.m667getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: onRequestSequenceCreated-DThHKJ0 */
    public void mo901onRequestSequenceCreatedDThHKJ0(long j) {
        synchronized (this) {
            try {
                if (this.initialRequestNumber == null) {
                    this.initialRequestNumber = RequestNumber.m639boximpl(j);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.graph.GraphLoop.Listener
    public void onStopRepeating() {
        this._result.f(new Result3A(Result3A.Status.Companion.m667getSUBMIT_CANCELLEDJvTi9ms(), null, 2, null));
    }

    @Override // androidx.camera.camera2.pipe.graph.Result3AStateListener
    /* JADX INFO: renamed from: update-voP-kFw */
    public boolean mo902updatevoPkFw(long j, FrameMetadata frameMetadata) {
        frameMetadata.getClass();
        if (this._result.P() || this._result.isCancelled()) {
            return true;
        }
        synchronized (this) {
            RequestNumber requestNumber = this.initialRequestNumber;
            if (requestNumber != null && j >= requestNumber.m645unboximpl()) {
                j59 j59Var = j59.a;
                CaptureResult.Key key = CaptureResult.SENSOR_TIMESTAMP;
                key.getClass();
                Long l = (Long) frameMetadata.get(key);
                long jMo462getFrameNumberUgla2oM = frameMetadata.mo462getFrameNumberUgla2oM();
                if (l != null && this.timestampOfFirstUpdateNs == null) {
                    this.timestampOfFirstUpdateNs = l;
                }
                Long l2 = this.timestampOfFirstUpdateNs;
                if (this.timeLimitNs != null && l2 != null && l != null && l.longValue() - l2.longValue() > this.timeLimitNs.longValue()) {
                    this._result.f(new Result3A(Result3A.Status.Companion.m669getTIME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (this.frameNumberOfFirstUpdate == null) {
                    this.frameNumberOfFirstUpdate = FrameNumber.m463boximpl(jMo462getFrameNumberUgla2oM);
                }
                FrameNumber frameNumber = this.frameNumberOfFirstUpdate;
                if (frameNumber != null && this.frameLimit != null && jMo462getFrameNumberUgla2oM - frameNumber.m469unboximpl() > this.frameLimit.intValue()) {
                    this._result.f(new Result3A(Result3A.Status.Companion.m665getFRAME_LIMIT_REACHEDJvTi9ms(), frameMetadata, null));
                    return true;
                }
                if (!this.exitCondition.invoke(frameMetadata).booleanValue()) {
                    return false;
                }
                this._result.f(new Result3A(Result3A.Status.Companion.m666getOKJvTi9ms(), frameMetadata, null));
                return true;
            }
            return false;
        }
    }

    public /* synthetic */ Result3AStateListenerImpl(nl3 nl3Var, Integer num, Long l, int i, jh2 jh2Var) {
        this((nl3<? super FrameMetadata, Boolean>) nl3Var, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    public /* synthetic */ Result3AStateListenerImpl(Map map, Integer num, Long l, int i, jh2 jh2Var) {
        this((Map<CaptureResult.Key<?>, ? extends List<? extends Object>>) map, (i & 2) != 0 ? null : num, (i & 4) != 0 ? null : l);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Result3AStateListenerImpl(Map<CaptureResult.Key<?>, ? extends List<? extends Object>> map, Integer num, Long l) {
        this(Result3AStateListenerKt.toConditionChecker(map), num, l);
        map.getClass();
    }
}
