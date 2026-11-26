package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public final class ho8 {
    public static final ho8 h = new ho8(new a(new ab9(me0.d(new StringBuilder(), gb9.g, " TaskRunner"), true)));
    public static final Logger i;
    public final a a;
    public boolean c;
    public long d;
    public int b = 10000;
    public final ArrayList e = new ArrayList();
    public final ArrayList f = new ArrayList();
    public final io8 g = new io8(this);

    public static final class a {
        public final ThreadPoolExecutor a;

        public a(ab9 ab9Var) {
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), ab9Var);
        }

        public final void a(io8 io8Var) {
            this.a.execute(io8Var);
        }
    }

    static {
        Logger logger = Logger.getLogger(ho8.class.getName());
        logger.getClass();
        i = logger;
    }

    public ho8(a aVar) {
        this.a = aVar;
    }

    public final void a(jl8 jl8Var, long j) {
        byte[] bArr = gb9.a;
        do8 do8Var = jl8Var.c;
        do8Var.getClass();
        if (do8Var.d != jl8Var) {
            ah.f("Check failed.");
            return;
        }
        boolean z = do8Var.f;
        do8Var.f = false;
        do8Var.d = null;
        this.e.remove(do8Var);
        if (j != -1 && !z && !do8Var.c) {
            do8Var.e(jl8Var, j, true);
        }
        if (do8Var.e.isEmpty()) {
            return;
        }
        this.f.add(do8Var);
    }

    public final jl8 b() {
        boolean z;
        byte[] bArr = gb9.a;
        while (true) {
            ArrayList arrayList = this.f;
            if (arrayList.isEmpty()) {
                break;
            }
            long jNanoTime = System.nanoTime();
            Iterator it = arrayList.iterator();
            long jMin = Long.MAX_VALUE;
            jl8 jl8Var = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                jl8 jl8Var2 = (jl8) ((do8) it.next()).e.get(0);
                long jMax = Math.max(0L, jl8Var2.d - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (jl8Var != null) {
                        z = true;
                        break;
                    }
                    jl8Var = jl8Var2;
                }
            }
            ArrayList arrayList2 = this.e;
            if (jl8Var != null) {
                byte[] bArr2 = gb9.a;
                jl8Var.d = -1L;
                do8 do8Var = jl8Var.c;
                do8Var.getClass();
                do8Var.e.remove(jl8Var);
                arrayList.remove(do8Var);
                do8Var.d = jl8Var;
                arrayList2.add(do8Var);
                if (z || (!this.c && !arrayList.isEmpty())) {
                    this.a.a(this.g);
                }
                return jl8Var;
            }
            if (this.c) {
                if (jMin >= this.d - jNanoTime) {
                    break;
                }
                notify();
                break;
            }
            this.c = true;
            this.d = jNanoTime + jMin;
            try {
                try {
                    long j = jMin / 1000000;
                    long j2 = jMin - (1000000 * j);
                    if (j > 0 || jMin > 0) {
                        wait(j, (int) j2);
                    }
                } catch (InterruptedException unused) {
                    for (int size = arrayList2.size() - 1; -1 < size; size--) {
                        ((do8) arrayList2.get(size)).b();
                    }
                    for (int size2 = arrayList.size() - 1; -1 < size2; size2--) {
                        do8 do8Var2 = (do8) arrayList.get(size2);
                        do8Var2.b();
                        if (do8Var2.e.isEmpty()) {
                            arrayList.remove(size2);
                        }
                    }
                }
                this.c = false;
            } catch (Throwable th) {
                this.c = false;
                throw th;
            }
        }
        return null;
    }

    public final void c(do8 do8Var) {
        do8Var.getClass();
        byte[] bArr = gb9.a;
        if (do8Var.d == null) {
            boolean zIsEmpty = do8Var.e.isEmpty();
            ArrayList arrayList = this.f;
            if (zIsEmpty) {
                arrayList.remove(do8Var);
            } else if (!arrayList.contains(do8Var)) {
                arrayList.add(do8Var);
            }
        }
        if (this.c) {
            notify();
        } else {
            this.a.a(this.g);
        }
    }

    public final do8 d() {
        int i2;
        synchronized (this) {
            i2 = this.b;
            this.b = i2 + 1;
        }
        return new do8(this, jh.b(i2, "Q"));
    }

    public final void e(jl8 jl8Var) {
        byte[] bArr = gb9.a;
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(jl8Var.a);
        try {
            long jA = jl8Var.a();
            synchronized (this) {
                a(jl8Var, jA);
                j59 j59Var = j59.a;
            }
        } finally {
            synchronized (this) {
                a(jl8Var, -1L);
                j59 j59Var2 = j59.a;
                threadCurrentThread.setName(name);
            }
        }
    }
}
