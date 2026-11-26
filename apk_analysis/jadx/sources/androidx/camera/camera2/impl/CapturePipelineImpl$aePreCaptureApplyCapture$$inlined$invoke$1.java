package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.oz;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1", f = "CapturePipeline.kt", l = {312, 885, 892}, m = "invokeSuspend", v = 1)
public final class CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ int $captureMode$inlined;
    final /* synthetic */ List $captureSignal;
    Object L$0;
    int label;
    final /* synthetic */ CapturePipelineImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(List list, e02 e02Var, CapturePipelineImpl capturePipelineImpl, int i) {
        super(2, e02Var);
        this.$captureSignal = list;
        this.this$0 = capturePipelineImpl;
        this.$captureMode$inlined = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1(this.$captureSignal, e02Var, this.this$0, this.$captureMode$inlined);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((CapturePipelineImpl$aePreCaptureApplyCapture$$inlined$invoke$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x008d A[Catch: all -> 0x0097, TryCatch #0 {all -> 0x0097, blocks: (B:32:0x0082, B:34:0x008d, B:37:0x009c, B:41:0x00a2), top: B:55:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:40:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b6 A[Catch: all -> 0x001b, TryCatch #2 {all -> 0x001b, blocks: (B:8:0x0016, B:45:0x00ae, B:47:0x00b6, B:48:0x00bf), top: B:59:0x0016 }] */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        AutoCloseable autoCloseable;
        Throwable th;
        AutoCloseable autoCloseable2;
        CameraGraph.Session session;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        boolean z = true;
        if (i == 0) {
            r57.b(obj);
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal");
            }
            List list = this.$captureSignal;
            this.label = 1;
            if (oz.b(list, this) != a32Var) {
            }
            return a32Var;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                autoCloseable2 = (AutoCloseable) this.L$0;
                try {
                    r57.b(obj);
                    Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A done");
                    }
                    j59 j59Var = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        throw th;
                    } catch (Throwable th3) {
                        aq5.c(autoCloseable2, th);
                        throw th3;
                    }
                }
            }
            r57.b(obj);
            autoCloseable = (AutoCloseable) obj;
            try {
                session = (CameraGraph.Session) autoCloseable;
                Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A");
                }
                if (this.$captureMode$inlined == 0) {
                    z = false;
                }
                this.L$0 = autoCloseable;
                this.label = 3;
                if (session.unlock3APostCapture(z, this) != a32Var) {
                    autoCloseable2 = autoCloseable;
                    Camera2Logger camera2Logger4 = Camera2Logger.INSTANCE;
                    if (Logger.isDebugEnabled(Log.TAG)) {
                        android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A done");
                    }
                    j59 j59Var2 = j59.a;
                    aq5.c(autoCloseable2, null);
                    return j59.a;
                }
                return a32Var;
            } catch (Throwable th4) {
                th = th4;
                autoCloseable2 = autoCloseable;
                throw th;
            }
        }
        r57.b(obj);
        Camera2Logger camera2Logger5 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#List<PipelineTask>.invoke: Waiting for POST_CAPTURE signal done");
        }
        if (Logger.isDebugEnabled(Log.TAG)) {
            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Acquiring session for unlocking 3A");
        }
        CameraGraph graph = this.this$0.useCaseGraphContext.getGraph();
        this.label = 2;
        obj = graph.acquireSession(this);
        if (obj != a32Var) {
            autoCloseable = (AutoCloseable) obj;
            session = (CameraGraph.Session) autoCloseable;
            Camera2Logger camera2Logger6 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A");
            }
            if (this.$captureMode$inlined == 0) {
                z = false;
            }
            this.L$0 = autoCloseable;
            this.label = 3;
            if (session.unlock3APostCapture(z, this) != a32Var) {
                autoCloseable2 = autoCloseable;
                Camera2Logger camera2Logger7 = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "CapturePipeline#aePreCaptureApplyCapture: Unlocking 3A done");
                }
                j59 j59Var3 = j59.a;
                aq5.c(autoCloseable2, null);
                return j59.a;
            }
        }
        return a32Var;
    }
}
