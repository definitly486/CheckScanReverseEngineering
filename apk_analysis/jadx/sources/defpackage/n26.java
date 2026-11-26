package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "com.warefly.checkscan.core.ui.paginator.Paginator$1", f = "Paginator.kt", l = {}, m = "invokeSuspend")
public final class n26 extends pg8 implements bm3<List<pz3>, e02<? super j59>, Object> {
    public /* synthetic */ Object l;
    public final /* synthetic */ r26<pz3> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n26(r26<pz3> r26Var, e02<? super n26> e02Var) {
        super(2, e02Var);
        this.m = r26Var;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        n26 n26Var = new n26(this.m, e02Var);
        n26Var.l = obj;
        return n26Var;
    }

    @Override // defpackage.bm3
    public final Object invoke(List<pz3> list, e02<? super j59> e02Var) {
        return ((n26) create(list, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        r57.b(obj);
        List list = (List) this.l;
        boolean zIsEmpty = list.isEmpty();
        r26<pz3> r26Var = this.m;
        if (!zIsEmpty || ((Number) r26Var.d.getValue()).intValue() != 0) {
            boolean zIsEmpty2 = list.isEmpty();
            r26.a<T> aVar = r26Var.c;
            if (!zIsEmpty2) {
                aVar.showData((List<? extends T>) list);
            }
        }
        return j59.a;
    }
}
