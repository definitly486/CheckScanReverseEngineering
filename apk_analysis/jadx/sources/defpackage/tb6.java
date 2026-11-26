package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class tb6 implements ac6, Thread.UncaughtExceptionHandler {
    public static volatile boolean d;
    public final ta6 b;
    public bc6 c;

    public tb6(ta6 ta6Var) {
        this.b = ta6Var;
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
        if (z) {
            ad6 ad6Var = this.b.H;
            if (ad6Var != null && ad6Var.E) {
                ad6Var.a.q.getClass();
            }
            if (d) {
                Thread.setDefaultUncaughtExceptionHandler(null);
                d = false;
                this.b.v.a("Exception autocapture is disabled.");
            }
        }
    }

    @Override // defpackage.ac6
    public final void b(bc6 bc6Var) {
        ad6 ad6Var;
        bc6Var.getClass();
        this.c = bc6Var;
        if (d || (ad6Var = this.b.H) == null || !ad6Var.E) {
            return;
        }
        ad6Var.a.q.getClass();
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        thread.getClass();
        th.getClass();
        bc6 bc6Var = this.c;
        if (bc6Var != null) {
            bc6Var.b(new de6(thread, th));
            bc6Var.flush();
        }
    }
}
