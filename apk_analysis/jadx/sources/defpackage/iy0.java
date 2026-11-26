package defpackage;

import io.reactivex.exceptions.CompositeException;

/* JADX INFO: loaded from: classes5.dex */
public final class iy0<T> extends tq5<a57<T>> {
    public final gv5 b;

    public static final class a implements cp2 {
        public final fy0<?> b;
        public volatile boolean c;

        public a(fy0<?> fy0Var) {
            this.b = fy0Var;
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.c = true;
            this.b.cancel();
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.c;
        }
    }

    public iy0(gv5 gv5Var) {
        this.b = gv5Var;
    }

    @Override // defpackage.tq5
    public final void f(ls5<? super a57<T>> ls5Var) {
        fy0 fy0VarM9526clone = this.b.m9526clone();
        a aVar = new a(fy0VarM9526clone);
        ls5Var.onSubscribe(aVar);
        if (aVar.c) {
            return;
        }
        boolean z = false;
        try {
            a57<T> a57VarH = ((gv5) fy0VarM9526clone).h();
            if (!aVar.c) {
                ls5Var.onNext(a57VarH);
            }
            if (aVar.c) {
                return;
            }
            try {
                ls5Var.onComplete();
            } catch (Throwable th) {
                th = th;
                z = true;
                m13.d(th);
                if (z) {
                    d97.b(th);
                    return;
                }
                if (aVar.c) {
                    return;
                }
                try {
                    ls5Var.onError(th);
                } catch (Throwable th2) {
                    m13.d(th2);
                    d97.b(new CompositeException(th, th2));
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
