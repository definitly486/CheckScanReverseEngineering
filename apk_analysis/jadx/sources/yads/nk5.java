package yads;

import android.os.ConditionVariable;

/* JADX INFO: loaded from: classes6.dex */
public final class nk5 extends Thread {
    public final /* synthetic */ ConditionVariable b;
    public final /* synthetic */ ok5 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public nk5(ok5 ok5Var, ConditionVariable conditionVariable) {
        super("ExoPlayer:SimpleCacheInit");
        this.c = ok5Var;
        this.b = conditionVariable;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        synchronized (this.c) {
            this.b.open();
            this.c.b();
            this.c.b.getClass();
        }
    }
}
