package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.k57;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ak4 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ck4 d;
    public final /* synthetic */ e4 e;
    public final /* synthetic */ Context f;
    public final /* synthetic */ ee4 g;
    public final /* synthetic */ b05 h;
    public final /* synthetic */ jd0 i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ak4(ck4 ck4Var, e4 e4Var, Context context, ee4 ee4Var, b05 b05Var, jd0 jd0Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = ck4Var;
        this.e = e4Var;
        this.f = context;
        this.g = ee4Var;
        this.h = b05Var;
        this.i = jd0Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        ak4 ak4Var = new ak4(this.d, this.e, this.f, this.g, this.h, this.i, e02Var);
        ak4Var.c = obj;
        return ak4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((ak4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object aVar;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        try {
            if (i == 0) {
                r57.b(obj);
                ck4 ck4Var = this.d;
                e4 e4Var = this.e;
                Context context = this.f;
                ee4 ee4Var = this.g;
                b05 b05Var = this.h;
                jd0 jd0Var = this.i;
                xj4 xj4Var = ck4Var.b;
                this.b = 1;
                xj4Var.getClass();
                defpackage.oi2 oi2Var = defpackage.qo2.a;
                obj = defpackage.av0.d(defpackage.sh2.c, new wj4(e4Var, xj4Var, context, ee4Var, jd0Var, b05Var, null), this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            aVar = (ee4) obj;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            return null;
        }
        return aVar;
    }
}
