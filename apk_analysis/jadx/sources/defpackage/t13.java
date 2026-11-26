package defpackage;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class t13 {
    public final AtomicReference<ListenableFuture<Void>> a = new AtomicReference<>(u24.c);
    public d b = new d();

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> implements js<T> {
        public final /* synthetic */ c b;
        public final /* synthetic */ js c;

        public a(c cVar, js jsVar) {
            this.b = cVar;
            this.c = jsVar;
        }

        @Override // defpackage.js
        public final ListenableFuture<T> call() {
            int i = c.f;
            if (this.b.compareAndSet(b.NOT_RUN, b.STARTED)) {
                return this.c.call();
            }
            u24.a<Object> aVar = u24.a.i;
            return aVar != null ? aVar : new u24.a();
        }

        public final String toString() {
            return this.c.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class b {
        private static final /* synthetic */ b[] $VALUES;
        public static final b CANCELLED;
        public static final b NOT_RUN;
        public static final b STARTED;

        static {
            b bVar = new b("NOT_RUN", 0);
            NOT_RUN = bVar;
            b bVar2 = new b("CANCELLED", 1);
            CANCELLED = bVar2;
            b bVar3 = new b("STARTED", 2);
            STARTED = bVar3;
            $VALUES = new b[]{bVar, bVar2, bVar3};
        }

        public b() {
            throw null;
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }
    }

    public static final class c extends AtomicReference<b> implements Executor, Runnable {
        public static final /* synthetic */ int f = 0;
        public t13 b;
        public Executor c;
        public Runnable d;
        public Thread e;

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            if (get() == b.CANCELLED) {
                this.c = null;
                this.b = null;
                return;
            }
            this.e = Thread.currentThread();
            try {
                t13 t13Var = this.b;
                Objects.requireNonNull(t13Var);
                d dVar = t13Var.b;
                if (dVar.a == this.e) {
                    this.b = null;
                    o8.r(dVar.b == null);
                    dVar.b = runnable;
                    Executor executor = this.c;
                    Objects.requireNonNull(executor);
                    dVar.c = executor;
                    this.c = null;
                } else {
                    Executor executor2 = this.c;
                    Objects.requireNonNull(executor2);
                    this.c = null;
                    this.d = runnable;
                    executor2.execute(this);
                }
            } finally {
                this.e = null;
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            Executor executor;
            Thread threadCurrentThread = Thread.currentThread();
            if (threadCurrentThread != this.e) {
                Runnable runnable = this.d;
                Objects.requireNonNull(runnable);
                this.d = null;
                runnable.run();
                return;
            }
            d dVar = new d();
            dVar.a = threadCurrentThread;
            t13 t13Var = this.b;
            Objects.requireNonNull(t13Var);
            t13Var.b = dVar;
            this.b = null;
            try {
                Runnable runnable2 = this.d;
                Objects.requireNonNull(runnable2);
                this.d = null;
                runnable2.run();
                while (true) {
                    Runnable runnable3 = dVar.b;
                    if (runnable3 == null || (executor = dVar.c) == null) {
                        break;
                    }
                    dVar.b = null;
                    dVar.c = null;
                    executor.execute(runnable3);
                }
                dVar.a = null;
            } catch (Throwable th) {
                dVar.a = null;
                throw th;
            }
        }
    }

    public static final class d {
        public Thread a;
        public Runnable b;
        public Executor c;
    }

    public final <T> ListenableFuture<T> a(js<T> jsVar, Executor executor) {
        jsVar.getClass();
        executor.getClass();
        final c cVar = new c(b.NOT_RUN);
        cVar.c = executor;
        cVar.b = this;
        a aVar = new a(cVar, jsVar);
        final nr7 nr7Var = new nr7();
        final ListenableFuture<Void> andSet = this.a.getAndSet(nr7Var);
        final n39 n39Var = new n39();
        n39Var.j = new n39.a(aVar);
        andSet.addListener(n39Var, cVar);
        final ListenableFuture<T> listenableFutureY = en3.Y(n39Var);
        Runnable runnable = new Runnable() { // from class: s13
            @Override // java.lang.Runnable
            public final void run() {
                n39 n39Var2 = n39Var;
                if (n39Var2.isDone()) {
                    nr7Var.n(andSet);
                    return;
                }
                if (listenableFutureY.isCancelled()) {
                    int i = t13.c.f;
                    if (cVar.compareAndSet(t13.b.NOT_RUN, t13.b.CANCELLED)) {
                        n39Var2.cancel(false);
                    }
                }
            }
        };
        jn2 jn2Var = jn2.INSTANCE;
        listenableFutureY.addListener(runnable, jn2Var);
        n39Var.addListener(runnable, jn2Var);
        return listenableFutureY;
    }
}
