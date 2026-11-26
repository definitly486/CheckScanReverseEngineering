package yads;

import android.os.Process;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes6.dex */
public final class cg6 extends Thread {
    public final o90 b;
    public final ts c;
    public volatile String d;

    public cg6(o90 o90Var) {
        super("ViewPoolThread");
        this.b = o90Var;
        this.c = new ts(new PriorityQueue(32));
        setPriority(5);
    }

    public final void a() {
        bg6 bg6Var = (bg6) this.c.poll();
        if (bg6Var == null) {
            try {
                setPriority(3);
                bg6Var = (bg6) this.c.take();
                setPriority(5);
            } catch (Throwable th) {
                setPriority(5);
                throw th;
            }
        }
        this.d = bg6Var.c;
        bg6Var.run();
        this.d = null;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        o90 o90Var = this.b;
        Process.myTid();
        o90Var.getClass();
        yx yxVarA = o90.a();
        while (true) {
            try {
                try {
                    a();
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    ((defpackage.dd2) yxVarA).getClass();
                    o90.b();
                    return;
                }
            } catch (Throwable th) {
                ((defpackage.dd2) yxVarA).getClass();
                o90.b();
                throw th;
            }
        }
    }
}
