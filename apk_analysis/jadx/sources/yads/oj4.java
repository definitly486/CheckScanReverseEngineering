package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class oj4 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ defpackage.hd3 c;
    public final /* synthetic */ b05 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oj4(defpackage.hd3 hd3Var, b05 b05Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = hd3Var;
        this.d = b05Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new oj4(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new oj4(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.hd3 hd3Var = this.c;
            nj4 nj4Var = new nj4(this.d);
            this.b = 1;
            if (hd3Var.collect(nj4Var, this) == a32Var) {
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
