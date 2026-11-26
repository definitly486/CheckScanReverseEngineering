package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class cf4 extends pg8 implements defpackage.bm3 {
    public final /* synthetic */ df4 b;
    public final /* synthetic */ d9 c;
    public final /* synthetic */ vg4 d;
    public final /* synthetic */ of4 e;
    public final /* synthetic */ ye4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cf4(df4 df4Var, d9 d9Var, vg4 vg4Var, of4 of4Var, ye4 ye4Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.b = df4Var;
        this.c = d9Var;
        this.d = vg4Var;
        this.e = of4Var;
        this.f = ye4Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new cf4(this.b, this.c, this.d, this.e, this.f, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((cf4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        new bf4(this.b, this.c, this.d, this.e, this.f).run();
        return j59.a;
    }
}
