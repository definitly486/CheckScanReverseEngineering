package androidx.camera.camera2.impl;

import androidx.camera.camera2.adapter.CoroutineAdaptersKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.mk2;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.u96;
import defpackage.xp1;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.camera.camera2.impl.UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1", f = "UseCaseCameraRequestControl.kt", l = {WebmConstants.MkvEbmlElement.CUE_TIME}, m = "invokeSuspend", v = 1)
public final class UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
    final /* synthetic */ nl3 $block;
    final /* synthetic */ List $deferredList;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1(nl3 nl3Var, List list, e02 e02Var) {
        super(2, e02Var);
        this.$block = nl3Var;
        this.$deferredList = list;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1(this.$block, this.$deferredList, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
        return ((UseCaseCameraRequestControlImpl$runOnSequentialList$$inlined$confineDeferredListSuspend$1) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            nl3 nl3Var = this.$block;
            this.label = 1;
            obj = nl3Var.invoke(this);
            if (obj == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        List list = this.$deferredList;
        int i2 = 0;
        for (Object obj2 : (Iterable) obj) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                u96.o();
                throw null;
            }
            CoroutineAdaptersKt.propagateTo((mk2) obj2, (xp1) list.get(i2));
            i2 = i3;
        }
        return j59.a;
    }
}
