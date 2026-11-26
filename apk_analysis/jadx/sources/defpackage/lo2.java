package defpackage;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class lo2 implements Executor {
    public final r22 b;

    public lo2(r22 r22Var) {
        this.b = r22Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        r22 r22Var = this.b;
        gx2 gx2Var = gx2.b;
        if (go2.h(r22Var, gx2Var)) {
            go2.g(r22Var, gx2Var, runnable);
        } else {
            runnable.run();
        }
    }

    public final String toString() {
        return this.b.toString();
    }
}
