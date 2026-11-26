package defpackage;

import sb4.d;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class tb4 extends qm3 implements dm3<sb4, bm7<?>, Object, j59> {
    public static final tb4 c = new tb4(3, sb4.class, "onAwaitInternalRegFunc", "onAwaitInternalRegFunc(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // defpackage.dm3
    public final j59 invoke(sb4 sb4Var, bm7<?> bm7Var, Object obj) {
        Object objL;
        sb4 sb4Var2 = sb4Var;
        bm7<?> bm7Var2 = bm7Var;
        int i = sb4.d;
        do {
            objL = sb4Var2.L();
            if (!(objL instanceof a44)) {
                if (!(objL instanceof yq1)) {
                    objL = vp2.f(objL);
                }
                bm7Var2.d(objL);
            }
            return j59.a;
        } while (sb4Var2.g0(objL) < 0);
        bm7Var2.c(qb4.g(sb4Var2, sb4Var2.new d(bm7Var2)));
        return j59.a;
    }
}
