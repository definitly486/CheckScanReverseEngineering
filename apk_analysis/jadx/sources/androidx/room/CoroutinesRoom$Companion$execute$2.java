package androidx.room;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.Callable;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.room.CoroutinesRoom$Companion$execute$2", f = "CoroutinesRoom.android.kt", l = {}, m = "invokeSuspend")
public final class CoroutinesRoom$Companion$execute$2<R> extends pg8 implements bm3<y22, e02<? super R>, Object> {
    final /* synthetic */ Callable<R> $callable;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$execute$2(Callable<R> callable, e02<? super CoroutinesRoom$Companion$execute$2> e02Var) {
        super(2, e02Var);
        this.$callable = callable;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        return new CoroutinesRoom$Companion$execute$2(this.$callable, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(y22 y22Var, e02<? super R> e02Var) {
        return ((CoroutinesRoom$Companion$execute$2) create(y22Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (this.label == 0) {
            r57.b(obj);
            return this.$callable.call();
        }
        ah.f("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
