package defpackage;

import java.util.TimerTask;

/* JADX INFO: loaded from: classes4.dex */
public final class cc6 extends TimerTask {
    public final /* synthetic */ dc6 b;

    public cc6(dc6 dc6Var) {
        this.b = dc6Var;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        oa6 oa6Var = this.b.h;
        if (oa6Var != null) {
            oa6Var.l();
        }
    }
}
