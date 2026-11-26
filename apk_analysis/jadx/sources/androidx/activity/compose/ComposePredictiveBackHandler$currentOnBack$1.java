package androidx.activity.compose;

import androidx.activity.BackEventCompat;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.activity.compose.ComposePredictiveBackHandler$currentOnBack$1", f = "PredictiveBackHandler.kt", l = {}, m = "invokeSuspend", v = 1)
public final class ComposePredictiveBackHandler$currentOnBack$1 extends pg8 implements bm3<hd3<? extends BackEventCompat>, e02<? super j59>, Object> {
    int label;

    public ComposePredictiveBackHandler$currentOnBack$1(e02<? super ComposePredictiveBackHandler$currentOnBack$1> e02Var) {
        super(2, e02Var);
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new ComposePredictiveBackHandler$currentOnBack$1(e02Var);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(hd3<BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return ((ComposePredictiveBackHandler$currentOnBack$1) create(hd3Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return j59.a;
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ Object invoke(hd3<? extends BackEventCompat> hd3Var, e02<? super j59> e02Var) {
        return invoke2((hd3<BackEventCompat>) hd3Var, e02Var);
    }
}
