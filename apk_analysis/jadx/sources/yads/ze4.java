package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class ze4 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ df4 b;
    public final /* synthetic */ ee4 c;
    public final /* synthetic */ b05 d;
    public final /* synthetic */ bf4 e;
    public final /* synthetic */ af4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ze4(df4 df4Var, ee4 ee4Var, b05 b05Var, bf4 bf4Var, af4 af4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = df4Var;
        this.c = ee4Var;
        this.d = b05Var;
        this.e = bf4Var;
        this.f = af4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new ze4(this.b, this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((ze4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        df4 df4Var = this.b;
        ff4 ff4Var = df4Var.f;
        Context context = df4Var.e;
        ee4 ee4Var = this.c;
        b05 b05Var = this.d;
        of4 of4Var = this.e.d;
        ye4 ye4Var = this.f.a;
        fe4 fe4Var = (fe4) ff4Var.d.a.get(ff4Var.a.f);
        if (fe4Var != null) {
            fe4Var.a(context, ee4Var, b05Var, ff4Var.c, of4Var, ff4Var.b, ye4Var);
        } else {
            ye4Var.a(o8.a);
        }
        return j59.a;
    }
}
