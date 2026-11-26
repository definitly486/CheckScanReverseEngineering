package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class yn4 extends pg8 implements defpackage.bm3 {
    public int b;
    public /* synthetic */ Object c;
    public final /* synthetic */ ArrayList d;
    public final /* synthetic */ ao4 e;
    public final /* synthetic */ Context f;
    public final /* synthetic */ sl5 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public yn4(Context context, ArrayList arrayList, defpackage.e02 e02Var, ao4 ao4Var, sl5 sl5Var) {
        super(2, e02Var);
        this.d = arrayList;
        this.e = ao4Var;
        this.f = context;
        this.g = sl5Var;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        yn4 yn4Var = new yn4(this.f, this.d, e02Var, this.e, this.g);
        yn4Var.c = obj;
        return yn4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((yn4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            defpackage.y22 y22Var = (defpackage.y22) this.c;
            ArrayList arrayList = this.d;
            ao4 ao4Var = this.e;
            Context context = this.f;
            sl5 sl5Var = this.g;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(defpackage.av0.a(y22Var, null, null, new xn4(ao4Var, context, sl5Var, (x54) it.next(), null), 3));
            }
            this.b = 1;
            obj = defpackage.oz.a(arrayList2, this);
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
        return defpackage.qn1.R((Iterable) obj);
    }
}
