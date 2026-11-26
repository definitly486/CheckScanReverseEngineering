package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class rc3 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ sc3 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rc3(sc3 sc3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = sc3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new rc3(this.b, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new rc3(this.b, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        return ((un4) this.b.d.getValue()).a;
    }
}
