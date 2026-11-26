package defpackage;

import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class td6 implements ac6 {
    public static volatile boolean e;
    public final ta6 b;
    public final db6 c;
    public final ExecutorService d;

    public td6(ta6 ta6Var, db6 db6Var, ExecutorService executorService) {
        executorService.getClass();
        this.b = ta6Var;
        this.c = db6Var;
        this.d = executorService;
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
    }

    @Override // defpackage.ac6
    public final void b(bc6 bc6Var) {
        if (e) {
            return;
        }
        e = true;
        he6.b(new aj2(this, 1), this.d);
        this.d.shutdown();
    }

    public final void c(zv6.c cVar, Throwable th) {
        this.b.v.a("Event failed to parse: " + th + '.');
        cVar.remove();
    }
}
