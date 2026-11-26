package defpackage;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* JADX INFO: loaded from: classes5.dex */
public final class q91<E> extends hl7<q91<E>> {
    public final mu0<E> h;
    public final /* synthetic */ AtomicReferenceArray i;

    public q91(long j, q91<E> q91Var, mu0<E> mu0Var, int i) {
        super(j, q91Var, i);
        this.h = mu0Var;
        this.i = new AtomicReferenceArray(su0.b * 2);
    }

    @Override // defpackage.hl7
    public final int g() {
        return su0.b;
    }

    @Override // defpackage.hl7
    public final void h(int i, o22 o22Var) {
        mu0<E> mu0Var;
        int i2 = su0.b;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        Object obj = this.i.get(i * 2);
        while (true) {
            Object objL = l(i);
            boolean z2 = objL instanceof lf9;
            mu0Var = this.h;
            if (z2 || (objL instanceof mf9)) {
                if (k(i, objL, z ? su0.j : su0.k)) {
                    n(i, null);
                    m(i, !z);
                    if (z) {
                        mu0Var.getClass();
                        nl3<E, j59> nl3Var = mu0Var.c;
                        if (nl3Var != null) {
                            rq3.a(nl3Var, obj, o22Var);
                            return;
                        }
                        return;
                    }
                    return;
                }
            } else {
                if (objL == su0.j || objL == su0.k) {
                    break;
                }
                if (objL != su0.g && objL != su0.f) {
                    if (objL == su0.i || objL == su0.d || objL == su0.l) {
                        return;
                    }
                    ah.f(ad2.b(objL, "unexpected state: "));
                    return;
                }
            }
        }
        n(i, null);
        if (z) {
            mu0Var.getClass();
            nl3<E, j59> nl3Var2 = mu0Var.c;
            if (nl3Var2 != null) {
                rq3.a(nl3Var2, obj, o22Var);
            }
        }
    }

    public final boolean k(int i, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.i;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    public final Object l(int i) {
        return this.i.get((i * 2) + 1);
    }

    public final void m(int i, boolean z) {
        if (z) {
            mu0<E> mu0Var = this.h;
            mu0Var.getClass();
            mu0Var.M((this.e * ((long) su0.b)) + ((long) i));
        }
        i();
    }

    public final void n(int i, Object obj) {
        this.i.set(i * 2, obj);
    }

    public final void o(int i, Object obj) {
        this.i.set((i * 2) + 1, obj);
    }
}
