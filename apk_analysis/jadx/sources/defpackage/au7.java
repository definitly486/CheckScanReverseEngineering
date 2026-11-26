package defpackage;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class au7<T> implements pq5<T> {
    public final yt7.c<T> b;

    public au7(yt7.c<T> cVar) {
        this.b = cVar;
    }

    @Override // defpackage.pq5
    public final T a() {
        T t;
        yt7.c<T> cVar = this.b;
        yt7 yt7Var = yt7.c;
        synchronized (yt7Var) {
            try {
                yt7.b bVar = yt7Var.a.get(cVar);
                if (bVar == null) {
                    bVar = new yt7.b(cVar.create());
                    yt7Var.a.put(cVar, bVar);
                }
                ScheduledFuture<?> scheduledFuture = bVar.c;
                if (scheduledFuture != null) {
                    scheduledFuture.cancel(false);
                    bVar.c = null;
                }
                bVar.b++;
                t = (T) bVar.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return t;
    }

    @Override // defpackage.pq5
    public final void b(Object obj) {
        yt7.c<T> cVar = this.b;
        yt7 yt7Var = yt7.c;
        synchronized (yt7Var) {
            try {
                yt7.b bVar = yt7Var.a.get(cVar);
                if (bVar == null) {
                    throw new IllegalArgumentException("No cached instance found for " + cVar);
                }
                o8.f(obj == bVar.a, "Releasing the wrong instance");
                o8.s(bVar.b > 0, "Refcount has already reached zero");
                int i = bVar.b - 1;
                bVar.b = i;
                if (i == 0) {
                    o8.s(bVar.c == null, "Destroy task already scheduled");
                    ScheduledExecutorService scheduledExecutorServiceNewSingleThreadScheduledExecutor = yt7Var.b;
                    if (scheduledExecutorServiceNewSingleThreadScheduledExecutor == null) {
                        scheduledExecutorServiceNewSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor(vs3.d("grpc-shared-destroyer-%d"));
                        yt7Var.b = scheduledExecutorServiceNewSingleThreadScheduledExecutor;
                    }
                    bVar.c = scheduledExecutorServiceNewSingleThreadScheduledExecutor.schedule(new vu4(new zt7(yt7Var, bVar, cVar, obj)), 1L, TimeUnit.SECONDS);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
