package defpackage;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.balance.BalanceInteractor$fetchTransferPromocodesByPage$1", f = "BalanceInteractor.kt", l = {}, m = "invokeSuspend")
public final class q40 extends pg8 implements bm3<List<? extends fr6>, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ b40 m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q40(b40 b40Var, e02<? super q40> e02Var) {
        super(2, e02Var);
        this.m = b40Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        q40 q40Var = new q40(this.m, e02Var);
        q40Var.l = obj;
        return q40Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<? extends fr6> list, e02<? super j59> e02Var) {
        return ((q40) create(list, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        Object value;
        ArrayList arrayList;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        List list = (List) this.l;
        z68 z68Var = this.m.h;
        do {
            value = z68Var.getValue();
            ArrayList arrayListV0 = qn1.v0((List) value);
            arrayListV0.addAll(list);
            HashSet hashSet = new HashSet();
            arrayList = new ArrayList();
            for (Object obj2 : arrayListV0) {
                if (hashSet.add(new Integer(((fr6) obj2).a))) {
                    arrayList.add(obj2);
                }
            }
        } while (!z68Var.a(value, arrayList));
        return j59.a;
    }
}
