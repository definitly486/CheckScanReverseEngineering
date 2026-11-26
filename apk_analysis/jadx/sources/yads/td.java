package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class td extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ yd c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public td(yd ydVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = ydVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new td(this.c, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new td(this.c, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i != 0) {
            if (i == 1) {
                r57.b(obj);
                return obj;
            }
            defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        r57.b(obj);
        sv4 sv4Var = this.c.e;
        this.b = 1;
        Object objA = sv4Var.a(1000L, this);
        return objA == a32Var ? a32Var : objA;
    }
}
