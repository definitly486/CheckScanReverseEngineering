package androidx.camera.camera2.impl;

import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Result3A;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.core.Logger;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.bd2;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1", f = "UseCaseCameraRequestControl.kt", l = {749}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1 extends pg8 implements nl3<e02<? super mk2<? extends Result3A>>, Object> {
    final /* synthetic */ int $aeMode;
    int I$0;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, int i, e02<? super UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeMode = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1(this.this$0, this.$aeMode, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super mk2<Result3A>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$setTorchOffAsync$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        int i;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = this.label;
        try {
            if (i2 == 0) {
                r57.b(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#setTorchOffAsync");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                int i3 = this.$aeMode;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.I$0 = i3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == a32Var) {
                    return a32Var;
                }
                i = i3;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = this.I$0;
                r57.b(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                mk2<Result3A> mk2VarMo233setTorchOffNqN7i0k = ((CameraGraph.Session) autoCloseable).mo233setTorchOffNqN7i0k(AeMode.m103boximpl(i));
                aq5.c(autoCloseable, null);
                return mk2VarMo233setTorchOffNqN7i0k;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(autoCloseable, th);
                    throw th2;
                }
            }
        } catch (CancellationException e) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled(Log.TAG)) {
                android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "Cannot acquire the CameraGraph.Session", e);
            }
            return UseCaseCameraRequestControlImpl.submitFailedResult;
        }
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Object invoke(e02<? super mk2<? extends Result3A>> e02Var) {
        return invoke2((e02<? super mk2<Result3A>>) e02Var);
    }
}
