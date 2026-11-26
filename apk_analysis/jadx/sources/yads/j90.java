package yads;

import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public final class j90 implements defpackage.s22 {
    public final k75 b;

    public j90(k75 k75Var) {
        this.b = k75Var;
    }

    @Override // defpackage.o22
    public final Object fold(Object obj, defpackage.bm3 bm3Var) {
        return o22.a.C0306a.a(this, obj, bm3Var);
    }

    @Override // defpackage.o22
    public final o22.a get(o22.b bVar) {
        return o22.a.C0306a.b(this, bVar);
    }

    @Override // o22.a
    public final o22.b getKey() {
        return s22.a.b;
    }

    @Override // defpackage.s22
    public final void handleException(defpackage.o22 o22Var, Throwable th) {
        try {
            String message = th.getMessage();
            if (message == null) {
                message = "Unknown";
            }
            this.b.reportError(message, th);
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }

    @Override // defpackage.o22
    public final defpackage.o22 minusKey(o22.b bVar) {
        return o22.a.C0306a.c(this, bVar);
    }

    @Override // defpackage.o22
    public final defpackage.o22 plus(defpackage.o22 o22Var) {
        return o22.a.C0306a.d(this, o22Var);
    }
}
