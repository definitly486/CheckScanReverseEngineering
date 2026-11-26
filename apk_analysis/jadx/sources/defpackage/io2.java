package defpackage;

import java.util.concurrent.CancellationException;
import kotlinx.coroutines.DispatchException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class io2<T> extends ll8 {
    public int d;

    public io2(int i) {
        this.d = i;
    }

    public void b(CancellationException cancellationException) {
    }

    public abstract e02<T> c();

    public Throwable e(Object obj) {
        yq1 yq1Var = obj instanceof yq1 ? (yq1) obj : null;
        if (yq1Var != null) {
            return yq1Var.a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T f(Object obj) {
        return obj;
    }

    public final void g(Throwable th) {
        v22.a(c().getContext(), new d32("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        try {
            e02<T> e02VarC = c();
            e02VarC.getClass();
            fo2 fo2Var = (fo2) e02VarC;
            e02<T> e02Var = fo2Var.f;
            Object obj = fo2Var.h;
            o22 context = e02Var.getContext();
            Object objC = lt8.c(context, obj);
            mb4 mb4Var = null;
            h59<?> h59VarC = objC != lt8.a ? q22.c(e02Var, context, objC) : null;
            try {
                o22 context2 = e02Var.getContext();
                Object objH = h();
                Throwable thE = e(objH);
                if (thE == null) {
                    int i = this.d;
                    boolean z = true;
                    if (i != 1 && i != 2) {
                        z = false;
                    }
                    if (z) {
                        mb4Var = (mb4) context2.get(mb4.a.b);
                    }
                }
                if (mb4Var != null && !mb4Var.isActive()) {
                    CancellationException cancellationExceptionY = mb4Var.y();
                    b(cancellationExceptionY);
                    e02Var.resumeWith(r57.a(cancellationExceptionY));
                } else if (thE != null) {
                    e02Var.resumeWith(new k57.a(thE));
                } else {
                    e02Var.resumeWith(f(objH));
                }
                j59 j59Var = j59.a;
            } finally {
                if (h59VarC == null || h59VarC.o0()) {
                    lt8.a(context, objC);
                }
            }
        } catch (DispatchException e) {
            v22.a(c().getContext(), e.b);
        } catch (Throwable th) {
            g(th);
        }
    }
}
