package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class jc2 {
    public static final <T extends ic2> void a(T t, nl3<? super T, j59>[] nl3VarArr, nl3<? super T, j59> nl3Var) {
        t.getClass();
        nl3Var.getClass();
        if (!(t instanceof e0)) {
            ah.f("impossible");
            return;
        }
        nl3[] nl3VarArr2 = (nl3[]) Arrays.copyOf(nl3VarArr, nl3VarArr.length);
        v39.c(1, nl3Var);
        ((e0) t).b(nl3VarArr2, nl3Var);
    }

    public static final void b(ic2 ic2Var, char c) {
        ic2Var.getClass();
        ic2Var.f(String.valueOf(c));
    }

    public static final <T extends ic2> void c(T t, String str, nl3<? super T, j59> nl3Var) {
        t.getClass();
        nl3Var.getClass();
        if (!(t instanceof e0)) {
            ah.f("impossible");
        } else {
            v39.c(1, nl3Var);
            ((e0) t).u(str, nl3Var);
        }
    }
}
