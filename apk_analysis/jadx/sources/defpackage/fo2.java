package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fo2<T> extends io2<T> implements b32, e02<T> {
    public static final /* synthetic */ long i = pz0.a.objectFieldOffset(fo2.class.getDeclaredField("_reusableCancellableContinuation$volatile"));
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public final r22 e;
    public final e02<T> f;
    public Object g;
    public final Object h;

    /* JADX WARN: Multi-variable type inference failed */
    public fo2(r22 r22Var, e02<? super T> e02Var) {
        super(-1);
        this.e = r22Var;
        this.f = e02Var;
        this.g = go2.b;
        this.h = lt8.b(e02Var.getContext());
    }

    @Override // defpackage.io2
    public final e02<T> c() {
        return this;
    }

    @Override // defpackage.b32
    public final b32 getCallerFrame() {
        e02<T> e02Var = this.f;
        if (e02Var instanceof b32) {
            return (b32) e02Var;
        }
        return null;
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return this.f.getContext();
    }

    @Override // defpackage.io2
    public final Object h() {
        Object obj = this.g;
        this.g = go2.b;
        return obj;
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        Throwable thA = k57.a(obj);
        Object yq1Var = thA == null ? obj : new yq1(thA, false);
        e02<T> e02Var = this.f;
        o22 context = e02Var.getContext();
        r22 r22Var = this.e;
        if (go2.h(r22Var, context)) {
            this.g = yq1Var;
            this.d = 0;
            go2.g(r22Var, e02Var.getContext(), this);
            return;
        }
        b13 b13VarA = pt8.a();
        if (b13VarA.c >= 4294967296L) {
            this.g = yq1Var;
            this.d = 0;
            b13VarA.n0(this);
            return;
        }
        b13VarA.q0(true);
        try {
            o22 context2 = e02Var.getContext();
            Object objC = lt8.c(context2, this.h);
            try {
                e02Var.resumeWith(obj);
                j59 j59Var = j59.a;
                lt8.a(context2, objC);
                while (b13VarA.u0()) {
                }
            } catch (Throwable th) {
                lt8.a(context2, objC);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                g(th2);
            } finally {
                b13VarA.k0(true);
            }
        }
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.e + ", " + cd2.c(this.f) + ']';
    }
}
