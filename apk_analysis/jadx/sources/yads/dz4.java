package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.pg8;
import defpackage.r57;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class dz4 extends pg8 implements defpackage.bm3 {
    public /* synthetic */ Object b;
    public final /* synthetic */ List c;
    public final /* synthetic */ fz4 d;
    public final /* synthetic */ Context e;
    public final /* synthetic */ n70 f;
    public final /* synthetic */ sl5 g;
    public final /* synthetic */ long h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dz4(long j, Context context, List list, defpackage.e02 e02Var, n70 n70Var, fz4 fz4Var, sl5 sl5Var) {
        super(2, e02Var);
        this.c = list;
        this.d = fz4Var;
        this.e = context;
        this.f = n70Var;
        this.g = sl5Var;
        this.h = j;
    }

    @Override // defpackage.cd0
    public final defpackage.e02 create(Object obj, defpackage.e02 e02Var) {
        List list = this.c;
        fz4 fz4Var = this.d;
        dz4 dz4Var = new dz4(this.h, this.e, list, e02Var, this.f, fz4Var, this.g);
        dz4Var.b = obj;
        return dz4Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        return ((dz4) create((defpackage.y22) obj, (defpackage.e02) obj2)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        defpackage.y22 y22Var = (defpackage.y22) this.b;
        List<l74> list = this.c;
        fz4 fz4Var = this.d;
        Context context = this.e;
        n70 n70Var = this.f;
        sl5 sl5Var = this.g;
        long j = this.h;
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
        for (l74 l74Var : list) {
            fz4Var.getClass();
            arrayList.add(defpackage.av0.a(y22Var, null, null, new az4(fz4Var, l74Var, context, n70Var, j, sl5Var, null), 3));
        }
        return arrayList;
    }
}
