package androidx.camera.camera2.impl;

import androidx.appcompat.app.AppCompatDelegate;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1", f = "DeferredUseCaseCameraRequestControl.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 110}, m = "invokeSuspend", v = 1)
public final class DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1<T> extends pg8 implements bm3<y22, e02<? super T>, Object> {
    final /* synthetic */ int $index;
    final /* synthetic */ mk2<List<mk2<T>>> $submissionJob;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(mk2<? extends List<? extends mk2<? extends T>>> mk2Var, int i, e02<? super DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1> e02Var) {
        super(2, e02Var);
        this.$submissionJob = mk2Var;
        this.$index = i;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(this.$submissionJob, this.$index, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super T> e02Var) {
        return ((DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            mk2<List<mk2<T>>> mk2Var = this.$submissionJob;
            this.label = 1;
            obj = mk2Var.Z(this);
            if (obj != a32Var) {
            }
        }
        if (i != 1) {
            if (i == 2) {
                r57.b(obj);
                return obj;
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        List list = (List) obj;
        if (this.$index >= list.size()) {
            return null;
        }
        mk2 mk2Var2 = (mk2) list.get(this.$index);
        this.label = 2;
        Object objZ = mk2Var2.Z(this);
        return objZ == a32Var ? a32Var : objZ;
    }
}
