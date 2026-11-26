package yads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public final class bn4 extends Thread {
    public final PriorityBlockingQueue b;
    public final ss c;
    public final xv d;
    public final pp2 e;
    public volatile boolean f = false;

    public bn4(PriorityBlockingQueue priorityBlockingQueue, ss ssVar, xv xvVar, pp2 pp2Var) {
        this.b = priorityBlockingQueue;
        this.c = ssVar;
        this.d = xvVar;
        this.e = pp2Var;
    }

    private void a() {
        r75 r75Var = (r75) this.b.take();
        SystemClock.elapsedRealtime();
        r75Var.a(3);
        try {
            try {
                try {
                    r75Var.a("network-queue-take");
                    if (r75Var.i()) {
                        r75Var.b("network-discard-cancelled");
                        r75Var.j();
                    } else {
                        TrafficStats.setThreadStatsTag(r75Var.e);
                        en4 en4VarA = this.c.a(r75Var);
                        r75Var.a("network-http-complete");
                        if (en4VarA.e && r75Var.h()) {
                            r75Var.b("not-modified");
                            r75Var.j();
                        } else {
                            z85 z85VarA = r75Var.a(en4VarA);
                            r75Var.a("network-parse-complete");
                            if (r75Var.j && z85VarA.b != null) {
                                this.d.a(r75Var.c(), z85VarA.b);
                                r75Var.a("network-cache-written");
                            }
                            synchronized (r75Var.f) {
                                r75Var.l = true;
                            }
                            this.e.a(r75Var, z85VarA, null);
                            r75Var.a(z85VarA);
                        }
                    }
                } catch (Exception e) {
                    boolean z = li6.a;
                    hi6 hi6Var = new hi6(e);
                    SystemClock.elapsedRealtime();
                    pp2 pp2Var = this.e;
                    pp2Var.getClass();
                    r75Var.a("post-error");
                    z85 z85Var = new z85(hi6Var);
                    np2 np2Var = pp2Var.a;
                    np2Var.a.post(new op2(r75Var, z85Var, null));
                    r75Var.j();
                }
            } catch (hi6 e2) {
                SystemClock.elapsedRealtime();
                hi6 hi6VarA = r75Var.a(e2);
                pp2 pp2Var2 = this.e;
                pp2Var2.getClass();
                r75Var.a("post-error");
                z85 z85Var2 = new z85(hi6VarA);
                np2 np2Var2 = pp2Var2.a;
                np2Var2.a.post(new op2(r75Var, z85Var2, null));
                r75Var.j();
            }
            r75Var.a(4);
        } catch (Throwable th) {
            r75Var.a(4);
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                boolean z = li6.a;
            } catch (Throwable unused2) {
                boolean z2 = li6.a;
                return;
            }
        }
    }
}
