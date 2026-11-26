package androidx.camera.camera2.impl;

import android.hardware.camera2.params.MeteringRectangle;
import androidx.camera.camera2.pipe.CameraControls3A;
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
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$update3aRegions$1$1", f = "UseCaseCameraRequestControl.kt", l = {749}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$update3aRegions$1$1 extends pg8 implements nl3<e02<? super mk2<? extends Result3A>>, Object> {
    final /* synthetic */ List<MeteringRectangle> $aeRegions;
    final /* synthetic */ List<MeteringRectangle> $afRegions;
    final /* synthetic */ List<MeteringRectangle> $awbRegions;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ UseCaseCameraRequestControlImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$update3aRegions$1$1(UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, e02<? super UseCaseCameraRequestControlImpl$update3aRegions$1$1> e02Var) {
        super(1, e02Var);
        this.this$0 = useCaseCameraRequestControlImpl;
        this.$aeRegions = list;
        this.$afRegions = list2;
        this.$awbRegions = list3;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$update3aRegions$1$1(this.this$0, this.$aeRegions, this.$afRegions, this.$awbRegions, e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(e02<? super mk2<Result3A>> e02Var) {
        return ((UseCaseCameraRequestControlImpl$update3aRegions$1$1) create(e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) throws Exception {
        List<MeteringRectangle> listB;
        List<MeteringRectangle> listB2;
        List<MeteringRectangle> listB3;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                r57.b(obj);
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled(Log.TAG)) {
                    android.util.Log.d(Camera2Logger.TRUNCATED_TAG, "UseCaseCameraRequestControlImpl#update3aRegions");
                }
                UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.this$0;
                List<MeteringRectangle> list = this.$aeRegions;
                List<MeteringRectangle> list2 = this.$afRegions;
                List<MeteringRectangle> list3 = this.$awbRegions;
                CameraGraph graph = useCaseCameraRequestControlImpl.useCaseGraphContext.getGraph();
                this.L$0 = list;
                this.L$1 = list2;
                this.L$2 = list3;
                this.label = 1;
                obj = graph.acquireSession(this);
                if (obj == a32Var) {
                    return a32Var;
                }
                listB = list;
                listB2 = list2;
                listB3 = list3;
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                listB3 = (List) this.L$2;
                listB2 = (List) this.L$1;
                listB = (List) this.L$0;
                r57.b(obj);
            }
            AutoCloseable autoCloseable = (AutoCloseable) obj;
            try {
                CameraGraph.Session session = (CameraGraph.Session) autoCloseable;
                if (listB == null) {
                    listB = aq5.b(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List<MeteringRectangle> list4 = listB;
                if (listB2 == null) {
                    listB2 = aq5.b(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                List<MeteringRectangle> list5 = listB2;
                if (listB3 == null) {
                    listB3 = aq5.b(CameraGraph.Constants3A.INSTANCE.getMETERING_REGIONS_DEFAULT());
                }
                mk2 mk2VarM232update3AydBZfZg$default = CameraControls3A.m232update3AydBZfZg$default(session, null, null, null, list4, list5, listB3, 7, null);
                aq5.c(autoCloseable, null);
                return mk2VarM232update3AydBZfZg$default;
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
