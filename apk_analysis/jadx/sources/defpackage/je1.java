package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@bd2(c = "com.warefly.checkscan.domain.interactor.cheque.ChequeInteractor$subscribeOnCheques$1", f = "ChequeInteractor.kt", l = {}, m = "invokeSuspend")
public final class je1 extends pg8 implements bm3<g89, e02<? super List<? extends hd1>>, Object> {
    public /* synthetic */ Object l;

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        je1 je1Var = new je1(2, e02Var);
        je1Var.l = obj;
        return je1Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(g89 g89Var, e02<? super List<? extends hd1>> e02Var) {
        return ((je1) create(g89Var, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        return ((g89) this.l).a;
    }
}
