package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class gl4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ il4 c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ d9 e;
    public final /* synthetic */ ee4 f;
    public final /* synthetic */ jd0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gl4(il4 il4Var, Context context, d9 d9Var, ee4 ee4Var, jd0 jd0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = il4Var;
        this.d = context;
        this.e = d9Var;
        this.f = ee4Var;
        this.g = jd0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new gl4(this.c, this.d, this.e, this.f, this.g, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((gl4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            il4 il4Var = this.c;
            Context context = this.d;
            d9 d9Var = this.e;
            ee4 ee4Var = this.f;
            jd0 jd0Var = this.g;
            this.b = 1;
            if (il4Var.a(context, d9Var, ee4Var, jd0Var, this) == a32Var) {
                return a32Var;
            }
        } else {
            if (i != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
        }
        return j59.a;
    }
}
