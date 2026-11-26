package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pz2 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ qz2 c;
    public final /* synthetic */ List d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pz2(qz2 qz2Var, List list, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = qz2Var;
        this.d = list;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new pz2(this.c, this.d, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return new pz2(this.c, this.d, (defpackage.e02) obj2).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            bz2 bz2Var = this.c.a;
            List list = this.d;
            this.b = 1;
            bz2Var.getClass();
            if (defpackage.z22.c(new zy2(list, bz2Var, null), this) == a32Var) {
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
