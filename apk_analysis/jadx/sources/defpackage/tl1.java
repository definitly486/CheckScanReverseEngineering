package defpackage;

import java.util.logging.Level;

/* JADX INFO: loaded from: classes5.dex */
public final class tl1 extends jz1 {
    public final /* synthetic */ h88 d;
    public final /* synthetic */ la5 e;
    public final /* synthetic */ sl1.b f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tl1(sl1.b bVar, h88 h88Var, la5 la5Var) {
        super(sl1.this.e, 0);
        this.f = bVar;
        this.d = h88Var;
        this.e = la5Var;
    }

    @Override // defpackage.jz1
    public final void a() {
        r46.c();
        try {
            r46.a();
            a34 a34Var = r46.a;
            a34Var.getClass();
            c();
            a34Var.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void c() {
        la5 la5Var;
        sl1.b bVar = this.f;
        sl1 sl1Var = sl1.this;
        sl1Var.f.b();
        h88 h88Var = bVar.b;
        if (h88Var != null) {
            la5Var = new la5();
        } else {
            h88Var = this.d;
            la5Var = this.e;
        }
        try {
            try {
                bVar.a.a(h88Var, la5Var);
            } catch (RuntimeException e) {
                sl1.o.log(Level.WARNING, "Exception thrown by onClose() in ClientCall", (Throwable) e);
            }
            py0 py0Var = sl1Var.d;
            if (h88Var.f()) {
                py0Var.c.a();
            } else {
                py0Var.d.a();
            }
        } catch (Throwable th) {
            py0 py0Var2 = sl1Var.d;
            if (h88Var.f()) {
                py0Var2.c.a();
            } else {
                py0Var2.d.a();
            }
            throw th;
        }
    }
}
