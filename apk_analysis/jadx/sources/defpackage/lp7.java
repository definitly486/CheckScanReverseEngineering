package defpackage;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes4.dex */
public final class lp7 implements Executor {
    public static final wn4 g = new wn4(lp7.class);
    public final Executor b;
    public final ArrayDeque c = new ArrayDeque();
    public c d = c.IDLE;
    public long e = 0;
    public final b f = new b();

    public class a implements Runnable {
        public final /* synthetic */ Runnable b;

        public a(Runnable runnable) {
            this.b = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.b.run();
        }

        public final String toString() {
            return this.b.toString();
        }
    }

    public final class b implements Runnable {
        public Runnable b;

        public b() {
        }

        /* JADX WARN: Code duplicated, block: B:46:0x0036 A[SYNTHETIC] */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        
            if (r1 == false) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0046, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        
            r9.b.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0052, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x0054, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0055, code lost:
        
            defpackage.lp7.g.a().log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r9.b, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0074, code lost:
        
            r9.b = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x0076, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r9 = this;
                r0 = 0
                r1 = r0
            L2:
                lp7 r2 = defpackage.lp7.this     // Catch: java.lang.Throwable -> L50
                java.util.ArrayDeque r2 = r2.c     // Catch: java.lang.Throwable -> L50
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L50
                if (r0 != 0) goto L28
                lp7 r0 = defpackage.lp7.this     // Catch: java.lang.Throwable -> L1c
                lp7$c r3 = r0.d     // Catch: java.lang.Throwable -> L1c
                lp7$c r4 = lp7.c.RUNNING     // Catch: java.lang.Throwable -> L1c
                if (r3 != r4) goto L1e
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L40
            L14:
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
                goto L40
            L1c:
                r9 = move-exception
                goto L77
            L1e:
                long r5 = r0.e     // Catch: java.lang.Throwable -> L1c
                r7 = 1
                long r5 = r5 + r7
                r0.e = r5     // Catch: java.lang.Throwable -> L1c
                r0.d = r4     // Catch: java.lang.Throwable -> L1c
                r0 = 1
            L28:
                lp7 r3 = defpackage.lp7.this     // Catch: java.lang.Throwable -> L1c
                java.util.ArrayDeque r3 = r3.c     // Catch: java.lang.Throwable -> L1c
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L1c
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L1c
                r9.b = r3     // Catch: java.lang.Throwable -> L1c
                if (r3 != 0) goto L41
                lp7 r9 = defpackage.lp7.this     // Catch: java.lang.Throwable -> L1c
                lp7$c r0 = lp7.c.IDLE     // Catch: java.lang.Throwable -> L1c
                r9.d = r0     // Catch: java.lang.Throwable -> L1c
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                if (r1 == 0) goto L40
                goto L14
            L40:
                return
            L41:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L50
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r9.b     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
                r3.run()     // Catch: java.lang.Throwable -> L52 java.lang.Exception -> L54
            L4d:
                r9.b = r2     // Catch: java.lang.Throwable -> L50
                goto L2
            L50:
                r9 = move-exception
                goto L79
            L52:
                r0 = move-exception
                goto L74
            L54:
                r3 = move-exception
                wn4 r4 = defpackage.lp7.g     // Catch: java.lang.Throwable -> L52
                java.util.logging.Logger r4 = r4.a()     // Catch: java.lang.Throwable -> L52
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L52
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
                r6.<init>()     // Catch: java.lang.Throwable -> L52
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L52
                java.lang.Runnable r7 = r9.b     // Catch: java.lang.Throwable -> L52
                r6.append(r7)     // Catch: java.lang.Throwable -> L52
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L52
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L52
                goto L4d
            L74:
                r9.b = r2     // Catch: java.lang.Throwable -> L50
                throw r0     // Catch: java.lang.Throwable -> L50
            L77:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L1c
                throw r9     // Catch: java.lang.Throwable -> L50
            L79:
                if (r1 == 0) goto L82
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L82:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: lp7.b.a():void");
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                a();
            } catch (Error e) {
                synchronized (lp7.this.c) {
                    lp7.this.d = c.IDLE;
                    throw e;
                }
            }
        }

        public final String toString() {
            Runnable runnable = this.b;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + lp7.this.d + "}";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c {
        private static final /* synthetic */ c[] $VALUES;
        public static final c IDLE;
        public static final c QUEUED;
        public static final c QUEUING;
        public static final c RUNNING;

        static {
            c cVar = new c("IDLE", 0);
            IDLE = cVar;
            c cVar2 = new c("QUEUING", 1);
            QUEUING = cVar2;
            c cVar3 = new c("QUEUED", 2);
            QUEUED = cVar3;
            c cVar4 = new c("RUNNING", 3);
            RUNNING = cVar4;
            $VALUES = new c[]{cVar, cVar2, cVar3, cVar4};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }
    }

    public lp7(Executor executor) {
        executor.getClass();
        this.b = executor;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x005f  */
    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        c cVar;
        boolean z;
        runnable.getClass();
        synchronized (this.c) {
            c cVar2 = this.d;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j = this.e;
                a aVar = new a(runnable);
                this.c.add(aVar);
                c cVar3 = c.QUEUING;
                this.d = cVar3;
                try {
                    this.b.execute(this.f);
                    if (this.d != cVar3) {
                        return;
                    }
                    synchronized (this.c) {
                        try {
                            if (this.e == j && this.d == cVar3) {
                                this.d = cVar;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Throwable th2) {
                    synchronized (this.c) {
                        try {
                            c cVar4 = this.d;
                            if (cVar4 != c.IDLE && cVar4 != c.QUEUING) {
                                z = false;
                            } else if (this.c.removeLastOccurrence(aVar)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!(th2 instanceof RejectedExecutionException) || z) {
                                throw th2;
                            }
                            return;
                        } catch (Throwable th3) {
                            throw th3;
                        }
                    }
                }
            }
            this.c.add(runnable);
        }
    }

    public final String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.b + "}";
    }
}
