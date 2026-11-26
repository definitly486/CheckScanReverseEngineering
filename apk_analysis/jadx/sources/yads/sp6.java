package yads;

import java.util.ArrayDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class sp6 {
    public final ArrayDeque b = new ArrayDeque();
    public mp6 c = null;
    public final ThreadPoolExecutor a = new ThreadPoolExecutor(1, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public final void a() {
        mp6 mp6Var = (mp6) this.b.poll();
        this.c = mp6Var;
        if (mp6Var != null) {
            mp6Var.a(this.a);
        }
    }

    public final void a(mp6 mp6Var) {
        mp6Var.a = this;
        this.b.add(mp6Var);
        if (this.c == null) {
            a();
        }
    }
}
