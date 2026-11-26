package yads;

import android.os.Process;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public final class ew extends Thread {
    public static final boolean h = li6.a;
    public final PriorityBlockingQueue b;
    public final PriorityBlockingQueue c;
    public final xv d;
    public final pp2 e;
    public volatile boolean f = false;
    public final ej6 g;

    public ew(PriorityBlockingQueue priorityBlockingQueue, PriorityBlockingQueue priorityBlockingQueue2, xv xvVar, pp2 pp2Var) {
        this.b = priorityBlockingQueue;
        this.c = priorityBlockingQueue2;
        this.d = xvVar;
        this.e = pp2Var;
        this.g = new ej6(this, priorityBlockingQueue2, pp2Var);
    }

    private void a() {
        r75 r75Var = (r75) this.b.take();
        r75Var.a("cache-queue-take");
        r75Var.a(1);
        try {
            if (r75Var.i()) {
                r75Var.b("cache-discard-canceled");
            } else {
                wv wvVar = this.d.get(r75Var.c());
                if (wvVar == null) {
                    r75Var.a("cache-miss");
                    if (!this.g.a(r75Var)) {
                        this.c.put(r75Var);
                    }
                } else {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (wvVar.e < jCurrentTimeMillis) {
                        r75Var.a("cache-hit-expired");
                        r75Var.p = wvVar;
                        if (!this.g.a(r75Var)) {
                            this.c.put(r75Var);
                        }
                    } else {
                        r75Var.a("cache-hit");
                        z85 z85VarA = r75Var.a(new en4(200, wvVar.a, wvVar.g, false));
                        r75Var.a("cache-hit-parsed");
                        if (z85VarA.c != null) {
                            r75Var.a("cache-parsing-failed");
                            this.d.a(r75Var.c());
                            r75Var.p = null;
                            if (!this.g.a(r75Var)) {
                                this.c.put(r75Var);
                            }
                        } else if (wvVar.f < jCurrentTimeMillis) {
                            r75Var.a("cache-hit-refresh-needed");
                            r75Var.p = wvVar;
                            z85VarA.d = true;
                            boolean zA = this.g.a(r75Var);
                            pp2 pp2Var = this.e;
                            if (zA) {
                                pp2Var.a(r75Var, z85VarA, null);
                            } else {
                                pp2Var.a(r75Var, z85VarA, new dw(this, r75Var));
                            }
                        } else {
                            this.e.a(r75Var, z85VarA, null);
                        }
                    }
                }
            }
        } finally {
            r75Var.a(2);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        this.d.a();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
            } catch (Throwable unused2) {
                return;
            }
        }
    }
}
