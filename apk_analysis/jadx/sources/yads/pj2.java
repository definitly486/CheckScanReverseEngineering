package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pj2 extends pg8 implements defpackage.bm3 {
    public /* synthetic */ Object b;
    public final /* synthetic */ List c;
    public final /* synthetic */ qj2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public pj2(List list, qj2 qj2Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = list;
        this.d = qj2Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        pj2 pj2Var = new pj2(this.c, this.d, e02Var);
        pj2Var.b = obj;
        return pj2Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((pj2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        defpackage.y22 y22Var = (defpackage.y22) this.b;
        List list = this.c;
        qj2 qj2Var = this.d;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            defpackage.av0.c(y22Var, null, null, new oj2(qj2Var, (String) it.next(), null), 3);
        }
        return j59.a;
    }
}
