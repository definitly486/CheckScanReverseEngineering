package defpackage;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public final class vy8 extends he7 {
    public static final vy8 c = new vy8();

    public static final class a implements Runnable {
        public final Runnable b;
        public final c c;
        public final long d;

        public a(Runnable runnable, c cVar, long j) {
            this.b = runnable;
            this.c = cVar;
            this.d = j;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.c.e) {
                return;
            }
            long jA = he7.a(TimeUnit.MILLISECONDS);
            long j = this.d;
            if (j > jA) {
                try {
                    Thread.sleep(j - jA);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                    d97.b(e);
                    return;
                }
            }
            if (this.c.e) {
                return;
            }
            this.b.run();
        }
    }

    public static final class b implements Comparable<b> {
        public final Runnable b;
        public final long c;
        public final int d;
        public volatile boolean e;

        public b(Runnable runnable, Long l, int i) {
            this.b = runnable;
            this.c = l.longValue();
            this.d = i;
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            int i;
            b bVar2 = bVar;
            long j = this.c;
            long j2 = bVar2.c;
            if (j < j2) {
                i = -1;
            } else {
                i = j > j2 ? 1 : 0;
            }
            if (i != 0) {
                return i;
            }
            int i2 = bVar2.d;
            int i3 = this.d;
            if (i3 < i2) {
                return -1;
            }
            return i3 > i2 ? 1 : 0;
        }
    }

    public static final class c extends he7.c {
        public final PriorityBlockingQueue<b> b = new PriorityBlockingQueue<>();
        public final AtomicInteger c = new AtomicInteger();
        public final AtomicInteger d = new AtomicInteger();
        public volatile boolean e;

        public final class a implements Runnable {
            public final b b;

            public a(b bVar) {
                this.b = bVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.b.e = true;
                c.this.b.remove(this.b);
            }
        }

        @Override // he7.c
        public final cp2 a(Runnable runnable) {
            return d(he7.a(TimeUnit.MILLISECONDS), runnable);
        }

        @Override // he7.c
        public final cp2 b(Runnable runnable, long j, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j) + he7.a(TimeUnit.MILLISECONDS);
            return d(millis, new a(runnable, this, millis));
        }

        public final cp2 d(long j, Runnable runnable) {
            if (this.e) {
                return hx2.INSTANCE;
            }
            b bVar = new b(runnable, Long.valueOf(j), this.d.incrementAndGet());
            this.b.add(bVar);
            if (this.c.getAndIncrement() != 0) {
                return new v87(new a(bVar));
            }
            int iAddAndGet = 1;
            while (true) {
                boolean z = this.e;
                PriorityBlockingQueue<b> priorityBlockingQueue = this.b;
                if (z) {
                    priorityBlockingQueue.clear();
                    return hx2.INSTANCE;
                }
                b bVarPoll = priorityBlockingQueue.poll();
                if (bVarPoll == null) {
                    iAddAndGet = this.c.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return hx2.INSTANCE;
                    }
                } else if (!bVarPoll.e) {
                    bVarPoll.b.run();
                }
            }
        }

        @Override // defpackage.cp2
        public final void dispose() {
            this.e = true;
        }

        @Override // defpackage.cp2
        public final boolean isDisposed() {
            return this.e;
        }
    }

    @Override // defpackage.he7
    public final he7.c b() {
        return new c();
    }

    @Override // defpackage.he7
    public final cp2 c(Runnable runnable) {
        runnable.run();
        return hx2.INSTANCE;
    }

    @Override // defpackage.he7
    public final cp2 d(Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            runnable.run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            d97.b(e);
        }
        return hx2.INSTANCE;
    }
}
