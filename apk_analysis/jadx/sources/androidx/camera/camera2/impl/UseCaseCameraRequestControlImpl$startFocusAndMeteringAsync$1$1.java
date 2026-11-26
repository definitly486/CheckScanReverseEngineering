package androidx.camera.camera2.impl;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.Lock3ABehavior;
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
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1", f = "UseCaseCameraRequestControl.kt", l = {749, 475}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1 extends pg8 implements nl3<e02<? super mk2<? extends Result3A>>, Object> {
    final /* synthetic */ Lock3ABehavior $aeLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $aeRegions;
    final /* synthetic */ Lock3ABehavior $afLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $afRegions;
    final /* synthetic */ AeMode $afTriggerStartAeMode;
    final /* synthetic */ Lock3ABehavior $awbLockBehavior;
    final /* synthetic */ List<MeteringRectangle> $awbRegions;
    final /* synthetic */ long $timeLimitNs;
    long J$0;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j, e02<? super UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
        this.$aeLockBehavior = lock3ABehavior;
        this.$afLockBehavior = lock3ABehavior2;
        this.$awbLockBehavior = lock3ABehavior3;
        this.$afTriggerStartAeMode = aeMode;
        this.$timeLimitNs = j;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, this.$aeLockBehavior, this.$afLockBehavior, this.$awbLockBehavior, this.$afTriggerStartAeMode, this.$timeLimitNs, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super mk2<Result3A>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$startFocusAndMeteringAsync$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        Lock3ABehavior lock3ABehavior;
        Object objAcquireSession;
        Lock3ABehavior lock3ABehavior2;
        List<MeteringRectangle> list;
        AeMode aeMode;
        List<MeteringRectangle> list2;
        Lock3ABehavior lock3ABehavior3;
        List<MeteringRectangle> list3;
        long j;
        AutoCloseable autoCloseable;
        CameraGraph.Session session;
        Throwable th;
        Throwable th2;
        Object objM344lock3AtS25XM$default;
        AutoCloseable autoCloseable2;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            try {
                try {
                    if (i == 0) {
                        r57.b(obj);
                        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                        if (Logger.isDebugEnabled(Log.TAG)) {
                            android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#startFocusAndMeteringAsync");
                        }
                        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                        List<MeteringRectangle> list4 = this.$aeRegions;
                        List<MeteringRectangle> list5 = this.$afRegions;
                        List<MeteringRectangle> list6 = this.$awbRegions;
                        lock3ABehavior = this.$aeLockBehavior;
                        Lock3ABehavior lock3ABehavior4 = this.$afLockBehavior;
                        Lock3ABehavior lock3ABehavior5 = this.$awbLockBehavior;
                        AeMode aeMode2 = this.$afTriggerStartAeMode;
                        long j2 = this.$timeLimitNs;
                        CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                        this.L$0 = list4;
                        this.L$1 = list5;
                        this.L$2 = list6;
                        this.L$3 = lock3ABehavior;
                        this.L$4 = lock3ABehavior4;
                        this.L$5 = lock3ABehavior5;
                        this.L$6 = aeMode2;
                        this.J$0 = j2;
                        this.label = 1;
                        objAcquireSession = graph.acquireSession(this);
                        if (objAcquireSession != a32Var) {
                            lock3ABehavior2 = lock3ABehavior5;
                            list = list4;
                            aeMode = aeMode2;
                            list2 = list5;
                            lock3ABehavior3 = lock3ABehavior4;
                            list3 = list6;
                            j = j2;
                        }
                        return a32Var;
                    }
                    if (i != 1) {
                        if (i != 2) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        autoCloseable2 = (AutoCloseable) this.L$0;
                        try {
                            r57.b(obj);
                            objM344lock3AtS25XM$default = obj;
                            th = null;
                            mk2 mk2Var = (mk2) objM344lock3AtS25XM$default;
                            aq5.c(autoCloseable2, th);
                            return mk2Var;
                        } catch (Throwable th3) {
                            th = th3;
                            autoCloseable = autoCloseable2;
                            th2 = th;
                            try {
                                throw th2;
                            } catch (Throwable th4) {
                                aq5.c(autoCloseable, th2);
                                throw th4;
                            }
                        }
                    }
                    long j3 = this.J$0;
                    AeMode aeMode3 = (AeMode) this.L$6;
                    Lock3ABehavior lock3ABehavior6 = (Lock3ABehavior) this.L$5;
                    Lock3ABehavior lock3ABehavior7 = (Lock3ABehavior) this.L$4;
                    lock3ABehavior = (Lock3ABehavior) this.L$3;
                    List<MeteringRectangle> list7 = (List) this.L$2;
                    List<MeteringRectangle> list8 = (List) this.L$1;
                    List<MeteringRectangle> list9 = (List) this.L$0;
                    r57.b(obj);
                    lock3ABehavior3 = lock3ABehavior7;
                    list3 = list7;
                    j = j3;
                    list2 = list8;
                    list = list9;
                    aeMode = aeMode3;
                    lock3ABehavior2 = lock3ABehavior6;
                    objAcquireSession = obj;
                    objM344lock3AtS25XM$default = CameraGraph.Session.m344lock3AtS25XM$default(session, null, null, null, list, list2, list3, lock3ABehavior, lock3ABehavior3, lock3ABehavior2, aeMode, null, null, 0, j, j, this, 7175, null);
                    if (objM344lock3AtS25XM$default != a32Var) {
                        autoCloseable2 = autoCloseable;
                        mk2 mk2Var2 = (mk2) objM344lock3AtS25XM$default;
                        aq5.c(autoCloseable2, th);
                        return mk2Var2;
                    }
                    return a32Var;
                } catch (Throwable th5) {
                    th2 = th5;
                    autoCloseable = autoCloseable;
                    throw th2;
                }
                session = (CameraGraph.Session) autoCloseable;
                this.L$0 = autoCloseable;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.L$5 = null;
                this.L$6 = null;
                this.label = 2;
                th = null;
            } catch (Throwable th6) {
                th = th6;
                th2 = th;
                throw th2;
            }
            autoCloseable = (AutoCloseable) objAcquireSession;
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
