package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class h59<T> extends af7<T> {
    public final ThreadLocal<b36<o22, Object>> g;
    private volatile boolean threadLocalIsSet;

    /* JADX WARN: Illegal instructions before constructor call */
    public h59(e02 e02Var, o22 o22Var) {
        i59 i59Var = i59.b;
        super(e02Var, o22Var.get(i59Var) == null ? o22Var.plus(i59Var) : o22Var);
        this.g = new ThreadLocal<>();
        if (e02Var.getContext().get(g02.a.b) instanceof r22) {
            return;
        }
        Object objC = lt8.c(o22Var, null);
        lt8.a(o22Var, objC);
        q0(o22Var, objC);
    }

    @Override // defpackage.af7
    public final void n0() {
        p0();
    }

    public final boolean o0() {
        boolean z = this.threadLocalIsSet && this.g.get() == null;
        this.g.remove();
        return !z;
    }

    public final void p0() {
        if (this.threadLocalIsSet) {
            b36<o22, Object> b36Var = this.g.get();
            if (b36Var != null) {
                lt8.a(b36Var.b, b36Var.c);
            }
            this.g.remove();
        }
    }

    public final void q0(o22 o22Var, Object obj) {
        this.threadLocalIsSet = true;
        this.g.set(new b36<>(o22Var, obj));
    }

    @Override // defpackage.af7, defpackage.sb4
    public final void t(Object obj) {
        p0();
        Object objB = oe0.b(obj);
        e02<T> e02Var = this.f;
        o22 context = e02Var.getContext();
        Object objC = lt8.c(context, null);
        h59<?> h59VarC = objC != lt8.a ? q22.c(e02Var, context, objC) : null;
        try {
            e02Var.resumeWith(objB);
            j59 j59Var = j59.a;
        } finally {
            if (h59VarC == null || h59VarC.o0()) {
                lt8.a(context, objC);
            }
        }
    }
}
