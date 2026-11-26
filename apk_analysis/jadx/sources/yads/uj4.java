package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class uj4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ xj4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ ee4 e;
    public final /* synthetic */ jd0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public uj4(xj4 xj4Var, Context context, ee4 ee4Var, jd0 jd0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = xj4Var;
        this.d = context;
        this.e = ee4Var;
        this.f = jd0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new uj4(this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((uj4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
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
        il4 il4Var = this.c.c;
        Context context = this.d;
        ee4 ee4Var = this.e;
        jd0 jd0Var = this.f;
        this.b = 1;
        Object objA = il4Var.a(true, context, ee4Var, jd0Var, (defpackage.f02) this);
        return objA == a32Var ? a32Var : objA;
    }
}
