package defpackage;

import kotlinx.coroutines.internal.UndeliveredElementException;

/* JADX INFO: loaded from: classes5.dex */
public final class gw1<E> extends mu0<E> {
    public final cu0 t;

    public gw1(int i, cu0 cu0Var, nl3<? super E, j59> nl3Var) {
        super(i, nl3Var);
        this.t = cu0Var;
        if (cu0Var == cu0.SUSPEND) {
            h8.f(x07.a(mu0.class).f(), "This implementation does not support suspension for senders, use ", " instead");
            throw null;
        }
        if (i >= 1) {
            return;
        }
        c9.f(kv2.b(i, "Buffered channel capacity must be at least 1, but ", " was specified"));
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.mu0
    public final void F(bm7<?> bm7Var, Object obj) {
        Object objN = N(obj, false);
        if (!(objN instanceof p91.b)) {
            bm7Var.d(j59.a);
        } else if (objN instanceof p91.a) {
            bm7Var.d(su0.l);
        } else {
            ah.f("unreachable");
        }
    }

    public final Object N(E e, boolean z) {
        nl3<E, j59> nl3Var;
        UndeliveredElementException undeliveredElementExceptionB;
        if (this.t == cu0.DROP_LATEST) {
            Object objMo0trySendJP2dKIU = super.mo0trySendJP2dKIU(e);
            if (!(objMo0trySendJP2dKIU instanceof p91.b) || (objMo0trySendJP2dKIU instanceof p91.a)) {
                return objMo0trySendJP2dKIU;
            }
            if (!z || (nl3Var = this.c) == null || (undeliveredElementExceptionB = rq3.b(nl3Var, e, null)) == null) {
                return j59.a;
            }
            throw undeliveredElementExceptionB;
        }
        E e2 = e;
        Object obj = su0.d;
        q91<E> q91Var = (q91) mu0.i.get(this);
        while (true) {
            long andIncrement = mu0.e.getAndIncrement(this);
            long j = 1152921504606846975L & andIncrement;
            boolean zV = v(andIncrement, false);
            int i = su0.b;
            long j2 = i;
            long j3 = j / j2;
            int i2 = (int) (j % j2);
            if (q91Var.e != j3) {
                q91<E> q91VarK = k(j3, q91Var);
                if (q91VarK != null) {
                    q91Var = q91VarK;
                } else if (zV) {
                    return new p91.a(q());
                }
            }
            int iK = K(q91Var, i2, e2, j, obj, zV);
            if (iK == 0) {
                q91Var.a();
                return j59.a;
            }
            if (iK == 1) {
                return j59.a;
            }
            if (iK == 2) {
                if (zV) {
                    q91Var.i();
                    return new p91.a(q());
                }
                lf9 lf9Var = obj instanceof lf9 ? (lf9) obj : null;
                if (lf9Var != null) {
                    lf9Var.a(q91Var, i2 + i);
                }
                f((q91Var.e * j2) + ((long) i2));
                return j59.a;
            }
            if (iK == 3) {
                ah.f("unexpected");
                return null;
            }
            if (iK == 4) {
                if (j < p()) {
                    q91Var.a();
                }
                return new p91.a(q());
            }
            if (iK == 5) {
                q91Var.a();
            }
            e2 = e;
        }
    }

    @Override // defpackage.mu0, defpackage.no7
    public final Object send(E e, e02<? super j59> e02Var) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionB;
        if (!(N(e, true) instanceof p91.a)) {
            return j59.a;
        }
        nl3<E, j59> nl3Var = this.c;
        if (nl3Var == null || (undeliveredElementExceptionB = rq3.b(nl3Var, e, null)) == null) {
            throw q();
        }
        sj0.c(undeliveredElementExceptionB, q());
        throw undeliveredElementExceptionB;
    }

    @Override // defpackage.mu0, defpackage.no7
    /* JADX INFO: renamed from: trySend-JP2dKIU */
    public final Object mo0trySendJP2dKIU(E e) {
        return N(e, false);
    }

    @Override // defpackage.mu0
    public final boolean x() {
        return this.t == cu0.DROP_OLDEST;
    }
}
