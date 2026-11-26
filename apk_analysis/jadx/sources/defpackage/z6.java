package defpackage;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public final class z6 {
    public final ExecutorService a;
    public final HashMap b;
    public final ReferenceQueue<yz2<?>> c;
    public kz2 d;

    public static final class a extends WeakReference<yz2<?>> {
        public final kf4 a;
        public final boolean b;
        public e47<?> c;

        public a(kf4 kf4Var, yz2 yz2Var, ReferenceQueue referenceQueue) {
            super(yz2Var, referenceQueue);
            r96.c(kf4Var, "Argument must not be null");
            this.a = kf4Var;
            boolean z = yz2Var.b;
            this.c = null;
            this.b = z;
        }
    }

    public z6() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new x6());
        this.b = new HashMap();
        this.c = new ReferenceQueue<>();
        this.a = executorServiceNewSingleThreadExecutor;
        executorServiceNewSingleThreadExecutor.execute(new y6(this));
    }

    public final synchronized void a(kf4 kf4Var, yz2<?> yz2Var) {
        a aVar = (a) this.b.put(kf4Var, new a(kf4Var, yz2Var, this.c));
        if (aVar != null) {
            aVar.c = null;
            aVar.clear();
        }
    }

    public final void b(a aVar) {
        e47<?> e47Var;
        synchronized (this) {
            this.b.remove(aVar.a);
            if (aVar.b && (e47Var = aVar.c) != null) {
                this.d.a(aVar.a, new yz2<>(e47Var, true, false, aVar.a, this.d));
            }
        }
    }
}
