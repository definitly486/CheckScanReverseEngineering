package defpackage;

import java.io.InterruptedIOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class ko2 {
    public ThreadPoolExecutor a;
    public final ArrayDeque<jy6.a> b = new ArrayDeque<>();
    public final ArrayDeque<jy6.a> c = new ArrayDeque<>();
    public final ArrayDeque<jy6> d = new ArrayDeque<>();

    public final synchronized void a() {
        try {
            Iterator<jy6.a> it = this.b.iterator();
            while (it.hasNext()) {
                jy6.this.cancel();
            }
            Iterator<jy6.a> it2 = this.c.iterator();
            while (it2.hasNext()) {
                jy6.this.cancel();
            }
            Iterator<jy6> it3 = this.d.iterator();
            while (it3.hasNext()) {
                it3.next().cancel();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b(ArrayDeque arrayDeque, Object obj) {
        synchronized (this) {
            if (!arrayDeque.remove(obj)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            j59 j59Var = j59.a;
        }
        d();
    }

    public final void c(jy6.a aVar) {
        aVar.c.decrementAndGet();
        b(this.c, aVar);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x005b  */
    /* JADX WARN: Code duplicated, block: B:25:0x0067 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #2 {, blocks: (B:23:0x0063, B:25:0x0067), top: B:52:0x0063 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x0067, please report this as an issue */
    public final void d() {
        int size;
        int i;
        jy6.a aVar;
        ThreadPoolExecutor threadPoolExecutor;
        byte[] bArr = gb9.a;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            try {
                Iterator<jy6.a> it = this.b.iterator();
                it.getClass();
                while (it.hasNext()) {
                    jy6.a next = it.next();
                    if (this.c.size() >= 64) {
                        break;
                    }
                    if (next.c.get() < 5) {
                        it.remove();
                        next.c.incrementAndGet();
                        arrayList.add(next);
                        this.c.add(next);
                    }
                }
                synchronized (this) {
                    this.c.size();
                    this.d.size();
                }
                size = arrayList.size();
                for (i = 0; i < size; i++) {
                    aVar = (jy6.a) arrayList.get(i);
                    synchronized (this) {
                        threadPoolExecutor = this.a;
                        if (threadPoolExecutor == null) {
                            ThreadPoolExecutor threadPoolExecutor2 = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ab9(gb9.g + " Dispatcher", false));
                            this.a = threadPoolExecutor2;
                            threadPoolExecutor = threadPoolExecutor2;
                        }
                    }
                    aVar.getClass();
                    jy6 jy6Var = jy6.this;
                    ko2 ko2Var = jy6Var.b.b;
                    byte[] bArr2 = gb9.a;
                    try {
                        try {
                            threadPoolExecutor.execute(aVar);
                        } catch (RejectedExecutionException e) {
                            InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                            interruptedIOException.initCause(e);
                            jy6Var.g(interruptedIOException);
                            aVar.b.onFailure(jy6Var, interruptedIOException);
                            jy6Var.b.b.c(aVar);
                        }
                    } catch (Throwable th) {
                        jy6Var.b.b.c(aVar);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        j59 j59Var = j59.a;
        size = arrayList.size();
        while (i < size) {
            aVar = (jy6.a) arrayList.get(i);
            synchronized (this) {
                threadPoolExecutor = this.a;
                if (threadPoolExecutor == null) {
                    ThreadPoolExecutor threadPoolExecutor3 = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ab9(gb9.g + " Dispatcher", false));
                    this.a = threadPoolExecutor3;
                    threadPoolExecutor = threadPoolExecutor3;
                }
                aVar.getClass();
                jy6 jy6Var2 = jy6.this;
                ko2 ko2Var2 = jy6Var2.b.b;
                byte[] bArr3 = gb9.a;
                threadPoolExecutor.execute(aVar);
            }
        }
    }
}
