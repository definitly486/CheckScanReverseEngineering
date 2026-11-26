package defpackage;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public class at extends wv8 {
    public static final lg6 h;
    public static at i;
    public static final ReentrantLock j;
    public static final Condition k;
    public static final long l;
    public static final long m;
    public int e;
    public int f = -1;
    public long g;

    public static final class a {
        public static at a() throws InterruptedException {
            lg6 lg6Var = at.h;
            at atVar = lg6Var.b[1];
            if (atVar == null) {
                long jNanoTime = System.nanoTime();
                at.k.await(at.l, TimeUnit.MILLISECONDS);
                if (lg6Var.b[1] != null || System.nanoTime() - jNanoTime < at.m) {
                    return null;
                }
                return at.i;
            }
            long jNanoTime2 = atVar.g - System.nanoTime();
            if (jNanoTime2 > 0) {
                at.k.await(jNanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            lg6Var.b(atVar);
            atVar.e = 2;
            return atVar;
        }

        public static void b(at atVar) {
            if (at.i == null) {
                at.i = new at();
                b bVar = new b("Okio Watchdog");
                bVar.setDaemon(true);
                bVar.start();
            }
            long jNanoTime = System.nanoTime();
            long j = atVar.c;
            boolean z = atVar.a;
            if (j != 0 && z) {
                atVar.g = Math.min(j, atVar.c() - jNanoTime) + jNanoTime;
            } else if (j != 0) {
                atVar.g = jNanoTime + j;
            } else {
                if (!z) {
                    xp.g();
                    return;
                }
                atVar.g = atVar.c();
            }
            lg6 lg6Var = at.h;
            int i = lg6Var.a + 1;
            lg6Var.a = i;
            at[] atVarArr = lg6Var.b;
            if (i == atVarArr.length) {
                at[] atVarArr2 = new at[i * 2];
                aq5.q(atVarArr, atVarArr2, 0, 0, 0, 14);
                lg6Var.b = atVarArr2;
            }
            lg6Var.a(i, atVar);
            if (atVar.f == 1) {
                at.k.signal();
            }
        }
    }

    public static final class b extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            while (true) {
                try {
                    ReentrantLock reentrantLock = at.j;
                    reentrantLock.lock();
                    try {
                        at atVarA = a.a();
                        if (atVarA == at.i) {
                            at.i = null;
                            reentrantLock.unlock();
                            return;
                        } else {
                            j59 j59Var = j59.a;
                            reentrantLock.unlock();
                            if (atVarA != null) {
                                atVarA.j();
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    continue;
                }
            }
        }
    }

    static {
        lg6 lg6Var = new lg6();
        lg6Var.b = new at[8];
        h = lg6Var;
        ReentrantLock reentrantLock = new ReentrantLock();
        j = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        conditionNewCondition.getClass();
        k = conditionNewCondition;
        l = 60000L;
        m = 60000000000L;
    }

    public final void h() {
        long j2 = this.c;
        boolean z = this.a;
        if (j2 != 0 || z) {
            ReentrantLock reentrantLock = j;
            reentrantLock.lock();
            try {
                if (this.e != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.e = 1;
                a.b(this);
                j59 j59Var = j59.a;
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean i() {
        ReentrantLock reentrantLock = j;
        reentrantLock.lock();
        try {
            int i2 = this.e;
            this.e = 0;
            if (i2 != 1) {
                return i2 == 2;
            }
            h.b(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void j() {
    }
}
