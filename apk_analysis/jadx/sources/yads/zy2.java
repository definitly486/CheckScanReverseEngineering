package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class zy2 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ List d;
    public final /* synthetic */ bz2 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zy2(List list, bz2 bz2Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = list;
        this.e = bz2Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        zy2 zy2Var = new zy2(this.d, this.e, e02Var);
        zy2Var.c = obj;
        return zy2Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((zy2) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
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
        defpackage.y22 y22Var = (defpackage.y22) this.c;
        List list = this.d;
        bz2 bz2Var = this.e;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(defpackage.av0.a(y22Var, null, null, new yy2(bz2Var, (c65) it.next(), null), 3));
        }
        this.b = 1;
        Object objA = defpackage.oz.a(arrayList, this);
        return objA == a32Var ? a32Var : objA;
    }
}
