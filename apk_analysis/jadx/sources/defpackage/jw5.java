package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class jw5 extends qm3 implements dm3<kw5, bm7<?>, Object, j59> {
    public static final jw5 c = new jw5(3, kw5.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);

    @Override // defpackage.dm3
    public final j59 invoke(kw5 kw5Var, bm7<?> bm7Var, Object obj) {
        final kw5 kw5Var2 = kw5Var;
        final bm7<?> bm7Var2 = bm7Var;
        long j = kw5Var2.a;
        if (j <= 0) {
            bm7Var2.d(j59.a);
        } else {
            Runnable runnable = new Runnable() { // from class: iw5
                @Override // java.lang.Runnable
                public final void run() {
                    bm7Var2.e(kw5Var2, j59.a);
                }
            };
            bm7Var2.getClass();
            zl7 zl7Var = (zl7) bm7Var2;
            o22 o22Var = zl7Var.b;
            zl7Var.d = yk2.c(o22Var).X(j, runnable, o22Var);
        }
        return j59.a;
    }
}
