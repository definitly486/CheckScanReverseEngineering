package androidx.compose.foundation.gestures;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.TransformableStateKt$panBy$3", f = "TransformableState.kt", l = {}, m = "invokeSuspend", v = 1)
public final class TransformableStateKt$panBy$3 extends pg8 implements bm3<TransformScope, e02<? super j59>, Object> {
    final /* synthetic */ long $centroid;
    final /* synthetic */ long $offset;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransformableStateKt$panBy$3(long j, long j2, e02<? super TransformableStateKt$panBy$3> e02Var) {
        super(2, e02Var);
        this.$centroid = j;
        this.$offset = j2;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        TransformableStateKt$panBy$3 transformableStateKt$panBy$3 = new TransformableStateKt$panBy$3(this.$centroid, this.$offset, e02Var);
        transformableStateKt$panBy$3.L$0 = obj;
        return transformableStateKt$panBy$3;
    }

    @Override // defpackage.bm3
    public final Object invoke(TransformScope transformScope, e02<? super j59> e02Var) {
        return ((TransformableStateKt$panBy$3) create(transformScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label != 0) {
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        ((TransformScope) this.L$0).mo1477transformByWithCentroidIEwrmTk(this.$centroid, 1.0f, this.$offset, 0.0f);
        return j59.a;
    }
}
