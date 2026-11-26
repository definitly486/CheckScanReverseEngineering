package defpackage;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes5.dex */
public final class gu3 extends hu3 {
    public final Handler c;
    public final String d;
    public final boolean e;
    public final gu3 f;

    public gu3(Handler handler, String str, boolean z) {
        this.c = handler;
        this.d = str;
        this.e = z;
        this.f = z ? this : new gu3(handler, str, true);
    }

    @Override // defpackage.wk2
    public final hp2 X(long j, final Runnable runnable, o22 o22Var) {
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.c.postDelayed(runnable, j)) {
            return new hp2() { // from class: du3
                @Override // defpackage.hp2
                public final void dispose() {
                    this.b.c.removeCallbacks(runnable);
                }
            };
        }
        n0(o22Var, runnable);
        return go5.b;
    }

    @Override // defpackage.wk2
    public final void b(long j, c31 c31Var) {
        int i = 0;
        eu3 eu3Var = new eu3(i, c31Var, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.c.postDelayed(eu3Var, j)) {
            c31Var.n(new fu3(i, this, eu3Var));
        } else {
            n0(c31Var.f, eu3Var);
        }
    }

    @Override // defpackage.r22
    public final void dispatch(o22 o22Var, Runnable runnable) {
        if (this.c.post(runnable)) {
            return;
        }
        n0(o22Var, runnable);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof gu3)) {
            return false;
        }
        gu3 gu3Var = (gu3) obj;
        return gu3Var.c == this.c && gu3Var.e == this.e;
    }

    public final int hashCode() {
        return (this.e ? 1231 : 1237) ^ System.identityHashCode(this.c);
    }

    @Override // defpackage.r22
    public final boolean isDispatchNeeded(o22 o22Var) {
        return (this.e && aa4.e(Looper.myLooper(), this.c.getLooper())) ? false : true;
    }

    @Override // defpackage.hu3
    public final gu3 k0() {
        return this.f;
    }

    public final void n0(o22 o22Var, Runnable runnable) {
        qb4.b(o22Var, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        oi2 oi2Var = qo2.a;
        sh2.c.dispatch(o22Var, runnable);
    }

    @Override // defpackage.hu3, defpackage.r22
    public final String toString() {
        gu3 gu3VarK0;
        String string;
        oi2 oi2Var = qo2.a;
        hu3 hu3Var = uy4.a;
        if (this == hu3Var) {
            string = "Dispatchers.Main";
        } else {
            try {
                gu3VarK0 = hu3Var.k0();
            } catch (UnsupportedOperationException unused) {
                gu3VarK0 = null;
            }
            string = this == gu3VarK0 ? "Dispatchers.Main.immediate" : null;
        }
        if (string == null) {
            string = this.d;
            if (string == null) {
                string = this.c.toString();
            }
            if (this.e) {
                return ni0.c(string, ".immediate");
            }
        }
        return string;
    }

    public gu3(Handler handler) {
        this(handler, null, false);
    }
}
