package defpackage;

import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a0<T> extends sb4 implements e02<T>, y22 {
    public final o22 e;

    public a0(o22 o22Var, boolean z, boolean z2) {
        super(z2);
        if (z) {
            O((mb4) o22Var.get(mb4.a.b));
        }
        this.e = o22Var.plus(this);
    }

    @Override // defpackage.sb4
    public final String A() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // defpackage.sb4
    public final void N(CompletionHandlerException completionHandlerException) {
        v22.a(this.e, completionHandlerException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.sb4
    public final void b0(Object obj) {
        if (!(obj instanceof yq1)) {
            l0(obj);
        } else {
            yq1 yq1Var = (yq1) obj;
            k0(yq1Var.a, pz0.a.getIntVolatile(yq1Var, yq1.b) == 1);
        }
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return this.e;
    }

    @Override // defpackage.y22
    public final o22 getCoroutineContext() {
        return this.e;
    }

    public void k0(Throwable th, boolean z) {
    }

    public void l0(T t) {
    }

    public final void m0(c32 c32Var, a0 a0Var, bm3 bm3Var) {
        Object objInvoke;
        c32Var.getClass();
        int i = c32.a.a[c32Var.ordinal()];
        if (i == 1) {
            try {
                go2.f(zya.b(zya.a(a0Var, this, bm3Var)), j59.a);
                return;
            } catch (Throwable th) {
                th = th;
                if (th instanceof DispatchException) {
                    th = ((DispatchException) th).b;
                }
                resumeWith(new k57.a(th));
                throw th;
            }
        }
        if (i == 2) {
            bm3Var.getClass();
            zya.b(zya.a(a0Var, this, bm3Var)).resumeWith(j59.a);
            return;
        }
        if (i != 3) {
            if (i == 4) {
                return;
            }
            me0.e();
            return;
        }
        try {
            o22 o22Var = this.e;
            Object objC = lt8.c(o22Var, null);
            try {
                if (bm3Var instanceof cd0) {
                    v39.c(2, bm3Var);
                    objInvoke = bm3Var.invoke(a0Var, this);
                } else {
                    objInvoke = zya.c(bm3Var, a0Var, this);
                }
                lt8.a(o22Var, objC);
                if (objInvoke != a32.COROUTINE_SUSPENDED) {
                    resumeWith(objInvoke);
                }
            } catch (Throwable th2) {
                lt8.a(o22Var, objC);
                throw th2;
            }
        } catch (Throwable th3) {
            th = th3;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).b;
            }
            resumeWith(new k57.a(th));
        }
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        Throwable thA = k57.a(obj);
        if (thA != null) {
            obj = new yq1(thA, false);
        }
        Object objW = W(obj);
        if (objW == vp2.d) {
            return;
        }
        t(objW);
    }
}
