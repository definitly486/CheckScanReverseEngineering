package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public abstract class f02 extends cd0 {
    private final o22 _context;
    private transient e02<Object> intercepted;

    public f02(e02<Object> e02Var) {
        this(e02Var, e02Var != null ? e02Var.getContext() : null);
    }

    @Override // defpackage.e02
    public o22 getContext() {
        o22 o22Var = this._context;
        o22Var.getClass();
        return o22Var;
    }

    public final e02<Object> intercepted() {
        e02<Object> e02VarInterceptContinuation = this.intercepted;
        if (e02VarInterceptContinuation == null) {
            g02 g02Var = (g02) getContext().get(g02.a.b);
            if (g02Var == null || (e02VarInterceptContinuation = g02Var.interceptContinuation(this)) == null) {
                e02VarInterceptContinuation = this;
            }
            this.intercepted = e02VarInterceptContinuation;
        }
        return e02VarInterceptContinuation;
    }

    @Override // defpackage.cd0
    public void releaseIntercepted() {
        e02<?> e02Var = this.intercepted;
        if (e02Var != null && e02Var != this) {
            o22.a aVar = getContext().get(g02.a.b);
            aVar.getClass();
            ((g02) aVar).releaseInterceptedContinuation(e02Var);
        }
        this.intercepted = xq1.b;
    }

    public f02(e02<Object> e02Var, o22 o22Var) {
        super(e02Var);
        this._context = o22Var;
    }
}
