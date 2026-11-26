package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.cheque.ChequeInteractor$fetchChequesByPage$1", f = "ChequeInteractor.kt", l = {}, m = "invokeSuspend")
public final class zd1 extends pg8 implements bm3<List<? extends hd1>, e02<? super Boolean>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ int m;
    public final /* synthetic */ xd1 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zd1(int i, xd1 xd1Var, e02<? super zd1> e02Var) {
        super(2, e02Var);
        this.m = i;
        this.n = xd1Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        zd1 zd1Var = new zd1(this.m, this.n, e02Var);
        zd1Var.l = obj;
        return zd1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<? extends hd1> list, e02<? super Boolean> e02Var) {
        ((zd1) create(list, e02Var)).invokeSuspend(j59.a);
        return Boolean.TRUE;
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        List list = (List) this.l;
        int i = this.m;
        xd1 xd1Var = this.n;
        ArrayList arrayList = i == 0 ? new ArrayList() : new ArrayList(((g89) xd1Var.c.getValue()).a);
        arrayList.addAll(list);
        z68 z68Var = xd1Var.c;
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (hashSet.add(new Integer(((hd1) obj2).a()))) {
                arrayList2.add(obj2);
            }
        }
        z68Var.k(null, new g89.a(arrayList2));
        return Boolean.TRUE;
    }
}
