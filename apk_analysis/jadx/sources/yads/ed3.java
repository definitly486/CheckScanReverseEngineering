package yads;

import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ed3 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ fd3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ed3(ArrayList arrayList, fd3 fd3Var, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.d = arrayList;
        this.e = fd3Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        ed3 ed3Var = new ed3(this.d, this.e, e02Var);
        ed3Var.c = obj;
        return ed3Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((ed3) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
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
        ArrayList arrayList = this.d;
        fd3 fd3Var = this.e;
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(defpackage.av0.a(y22Var, null, null, new dd3((rd3) it.next(), fd3Var, null), 3));
        }
        this.b = 1;
        Object objA = defpackage.oz.a(arrayList2, this);
        return objA == a32Var ? a32Var : objA;
    }
}
