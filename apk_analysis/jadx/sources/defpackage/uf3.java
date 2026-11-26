package defpackage;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class uf3 extends o87 {
    public final o87 c;

    public uf3(o87 o87Var) {
        this.c = o87Var;
    }

    public final void i() {
        this.c.c();
    }

    public final void j(lk3... lk3VarArr) {
        e((df7[]) Arrays.copyOf(lk3VarArr, lk3VarArr.length));
    }

    public final void k(Object obj, String str) {
        obj.getClass();
        o87 o87Var = this.c;
        o87Var.getClass();
        y57 y57Var = o87Var.b;
        y57Var.getClass();
        t57 t57Var = (t57) y57Var.a.remove(str);
        if (t57Var == null) {
            return;
        }
        t57Var.onResult(obj);
    }

    public final void l(t57 t57Var) {
        y57 y57Var = this.c.b;
        y57Var.getClass();
        y57Var.a.put("auth_verification_result", t57Var);
    }
}
