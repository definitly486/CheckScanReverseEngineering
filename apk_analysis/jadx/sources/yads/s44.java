package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import defpackage.rm9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class s44 extends pg8 implements defpackage.bm3 {
    public int b;
    public final /* synthetic */ com.monetization.ads.mediation.base.initialize.a c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ dt e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s44(com.monetization.ads.mediation.base.initialize.a aVar, Context context, dt dtVar, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = aVar;
        this.d = context;
        this.e = dtVar;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        return new s44(this.c, this.d, this.e, e02Var);
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((s44) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object objC;
        List<l74> arrayList;
        List list;
        Object obj2 = defpackage.a32.COROUTINE_SUSPENDED;
        int i = this.b;
        if (i == 0) {
            r57.b(obj);
            com.monetization.ads.mediation.base.initialize.a aVar = this.c;
            Context context = this.d;
            dt dtVar = this.e;
            this.b = 1;
            AtomicBoolean atomicBoolean = com.monetization.ads.mediation.base.initialize.a.g;
            aVar.getClass();
            if (com.monetization.ads.mediation.base.initialize.a.g.getAndSet(false)) {
                aVar.b.getClass();
                o74 o74Var = dtVar.c;
                if (o74Var == null || (list = o74Var.c) == null) {
                    arrayList = defpackage.kx2.b;
                } else {
                    arrayList = new ArrayList();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        defpackage.nn1.s(((h74) it.next()).c, arrayList);
                    }
                }
                ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
                for (l74 l74Var : arrayList) {
                    aVar.c.getClass();
                    arrayList2.add(new x54(l74Var.b, l74Var.c, null, null, null, null, null, null));
                }
                objC = rm9.c(new w44(aVar.e.a(arrayList2), aVar, context, null), this);
                Object obj3 = defpackage.a32.COROUTINE_SUSPENDED;
                if (objC != obj3) {
                    objC = j59.a;
                }
                if (objC != obj3) {
                    objC = j59.a;
                }
            } else {
                objC = j59.a;
            }
            if (objC == obj2) {
                return obj2;
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
