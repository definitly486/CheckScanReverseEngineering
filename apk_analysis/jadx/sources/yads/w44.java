package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class w44 extends pg8 implements defpackage.bm3 {
    public /* synthetic */ Object b;
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ com.monetization.ads.mediation.base.initialize.a d;
    public final /* synthetic */ Context e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w44(ArrayList arrayList, com.monetization.ads.mediation.base.initialize.a aVar, Context context, defpackage.e02 e02Var) {
        super(2, e02Var);
        this.c = arrayList;
        this.d = aVar;
        this.e = context;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        w44 w44Var = new w44(this.c, this.d, this.e, e02Var);
        w44Var.b = obj;
        return w44Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((w44) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        defpackage.y22 y22Var = (defpackage.y22) this.b;
        ArrayList arrayList = this.c;
        com.monetization.ads.mediation.base.initialize.a aVar = this.d;
        Context context = this.e;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            defpackage.av0.c(y22Var, null, null, new v44(aVar, context, (x54) it.next(), null), 3);
        }
        return j59.a;
    }
}
