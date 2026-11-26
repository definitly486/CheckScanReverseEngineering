package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;

/* JADX INFO: loaded from: classes6.dex */
public final class nf5 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ rf5 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nf5(boolean z, rf5 rf5Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = z;
        this.d = rf5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new nf5(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new nf5(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            if (this.c) {
                qj2 qj2Var = this.d.q;
                this.b = 1;
                if (qj2Var.a(this) == a32Var) {
                    return a32Var;
                }
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
