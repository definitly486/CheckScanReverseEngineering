package yads;

import defpackage.i29;

/* JADX INFO: loaded from: classes6.dex */
public final class rk5 extends Thread {
    public final /* synthetic */ xk5 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rk5(xk5 xk5Var) {
        super("ExoPlayer:SimpleDecoder");
        this.b = xk5Var;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        do {
            try {
            } catch (InterruptedException e) {
                i29.a(e);
                return;
            }
        } while (this.b.c());
    }
}
