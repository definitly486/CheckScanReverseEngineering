package yads;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import defpackage.j59;
import defpackage.nl3;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.c26;

/* JADX INFO: loaded from: classes6.dex */
public final class c26 {
    public final yr2 a;
    public final List b;
    public final as2 c;
    public final gs2 d;
    public final ao2 e;
    public final bt0 f;
    public tp0 h;
    public tp0 k;
    public tp0 l;
    public tp0 m;
    public final LinkedHashSet n;
    public final nl3 g = new defpackage.u(this, 5);
    public zd2 i = zd2.ON_CONDITION;
    public final WeakHashMap j = new WeakHashMap();

    public c26(yr2 yr2Var, List list, as2 as2Var, gs2 gs2Var, ao2 ao2Var, bt0 bt0Var) {
        this.a = yr2Var;
        this.b = list;
        this.c = as2Var;
        this.d = gs2Var;
        this.e = ao2Var;
        this.f = bt0Var;
        this.h = as2Var.b(gs2Var, new defpackage.ca2(this, 5));
        tp0 tp0Var = tp0.a;
        this.k = tp0Var;
        this.l = tp0Var;
        this.m = tp0Var;
        this.n = new LinkedHashSet();
    }

    public final void a() {
        boolean zIsTerminated;
        boolean zIsTerminated2;
        boolean zIsTerminated3;
        boolean zIsTerminated4;
        if (!this.n.isEmpty()) {
            b();
            return;
        }
        AutoCloseable autoCloseable = this.h;
        boolean z = autoCloseable instanceof AutoCloseable;
        TimeUnit timeUnit = TimeUnit.DAYS;
        boolean z2 = false;
        if (z) {
            autoCloseable.close();
        } else if (autoCloseable instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z3 = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused) {
                        if (!z3) {
                            executorService.shutdownNow();
                            z3 = true;
                        }
                    }
                }
                if (z3) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
        } else if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable).release();
        }
        AutoCloseable autoCloseable2 = this.k;
        if (autoCloseable2 instanceof AutoCloseable) {
            autoCloseable2.close();
        } else if (autoCloseable2 instanceof ExecutorService) {
            ExecutorService executorService2 = (ExecutorService) autoCloseable2;
            if (executorService2 != ForkJoinPool.commonPool() && !(zIsTerminated2 = executorService2.isTerminated())) {
                executorService2.shutdown();
                boolean z4 = false;
                while (!zIsTerminated2) {
                    try {
                        zIsTerminated2 = executorService2.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused2) {
                        if (!z4) {
                            executorService2.shutdownNow();
                            z4 = true;
                        }
                    }
                }
                if (z4) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable2 instanceof TypedArray) {
            ((TypedArray) autoCloseable2).recycle();
        } else if (autoCloseable2 instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable2).release();
        } else {
            if (!(autoCloseable2 instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable2).release();
        }
        AutoCloseable autoCloseable3 = this.l;
        if (autoCloseable3 instanceof AutoCloseable) {
            autoCloseable3.close();
        } else if (autoCloseable3 instanceof ExecutorService) {
            ExecutorService executorService3 = (ExecutorService) autoCloseable3;
            if (executorService3 != ForkJoinPool.commonPool() && !(zIsTerminated3 = executorService3.isTerminated())) {
                executorService3.shutdown();
                boolean z5 = false;
                while (!zIsTerminated3) {
                    try {
                        zIsTerminated3 = executorService3.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused3) {
                        if (!z5) {
                            executorService3.shutdownNow();
                            z5 = true;
                        }
                    }
                }
                if (z5) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable3 instanceof TypedArray) {
            ((TypedArray) autoCloseable3).recycle();
        } else if (autoCloseable3 instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable3).release();
        } else {
            if (!(autoCloseable3 instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable3).release();
        }
        AutoCloseable autoCloseable4 = this.m;
        if (autoCloseable4 instanceof AutoCloseable) {
            autoCloseable4.close();
            return;
        }
        if (!(autoCloseable4 instanceof ExecutorService)) {
            if (autoCloseable4 instanceof TypedArray) {
                ((TypedArray) autoCloseable4).recycle();
                return;
            }
            if (autoCloseable4 instanceof MediaMetadataRetriever) {
                ((MediaMetadataRetriever) autoCloseable4).release();
                return;
            } else if (autoCloseable4 instanceof MediaDrm) {
                ((MediaDrm) autoCloseable4).release();
                return;
            } else {
                defpackage.mi2.b();
                return;
            }
        }
        ExecutorService executorService4 = (ExecutorService) autoCloseable4;
        if (executorService4 == ForkJoinPool.commonPool() || (zIsTerminated4 = executorService4.isTerminated())) {
            return;
        }
        executorService4.shutdown();
        while (!zIsTerminated4) {
            try {
                zIsTerminated4 = executorService4.awaitTermination(1L, timeUnit);
            } catch (InterruptedException unused4) {
                if (!z2) {
                    executorService4.shutdownNow();
                    z2 = true;
                }
            }
        }
        if (z2) {
            Thread.currentThread().interrupt();
        }
    }

    public final void b() throws Exception {
        boolean zIsTerminated;
        AutoCloseable autoCloseable = this.h;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
        } else if (autoCloseable instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            executorService.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
        } else if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable).release();
        }
        this.k = this.a.a(this.d, this.g);
        gs2 gs2Var = this.d;
        this.l = gs2Var.d.a(this.a.b(gs2Var), new defpackage.g26(this, 1));
        this.h = this.c.b(this.d, new defpackage.vr3(this, 2));
        c();
    }

    public final void c() {
        for (vh2 vh2Var : this.n) {
            vq0 vq0Var = vh2Var instanceof vq0 ? (vq0) vh2Var : null;
            if (vq0Var != null) {
                vq0 vq0Var2 = vq0Var.A ? vq0Var : null;
                if (vq0Var2 != null) {
                    a(vq0Var2);
                }
            }
            if (a(vh2Var)) {
                for (xr0 xr0Var : this.b) {
                }
                bt0.a(this.f, vh2Var, this.d, this.b);
            }
        }
    }

    public static final j59 b(c26 c26Var, zd2 zd2Var) {
        c26Var.i = zd2Var;
        return j59.a;
    }

    public static final j59 a(c26 c26Var, zd2 zd2Var) {
        c26Var.i = zd2Var;
        return j59.a;
    }

    public static final j59 a(c26 c26Var, boolean z) {
        c26Var.c();
        return j59.a;
    }

    public static final j59 a(c26 c26Var, u66 u66Var) throws Exception {
        boolean zIsTerminated;
        boolean zIsTerminated2;
        boolean zIsTerminated3;
        boolean zIsTerminated4;
        AutoCloseable autoCloseable = c26Var.h;
        boolean z = autoCloseable instanceof AutoCloseable;
        TimeUnit timeUnit = TimeUnit.DAYS;
        boolean z2 = false;
        if (z) {
            autoCloseable.close();
        } else if (autoCloseable instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z3 = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused) {
                        if (!z3) {
                            executorService.shutdownNow();
                            z3 = true;
                        }
                    }
                }
                if (z3) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
        } else if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof MediaDrm)) {
                defpackage.mi2.b();
                return null;
            }
            ((MediaDrm) autoCloseable).release();
        }
        AutoCloseable autoCloseable2 = c26Var.k;
        if (autoCloseable2 instanceof AutoCloseable) {
            autoCloseable2.close();
        } else if (autoCloseable2 instanceof ExecutorService) {
            ExecutorService executorService2 = (ExecutorService) autoCloseable2;
            if (executorService2 != ForkJoinPool.commonPool() && !(zIsTerminated2 = executorService2.isTerminated())) {
                executorService2.shutdown();
                boolean z4 = false;
                while (!zIsTerminated2) {
                    try {
                        zIsTerminated2 = executorService2.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused2) {
                        if (!z4) {
                            executorService2.shutdownNow();
                            z4 = true;
                        }
                    }
                }
                if (z4) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable2 instanceof TypedArray) {
            ((TypedArray) autoCloseable2).recycle();
        } else if (autoCloseable2 instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable2).release();
        } else {
            if (!(autoCloseable2 instanceof MediaDrm)) {
                defpackage.mi2.b();
                return null;
            }
            ((MediaDrm) autoCloseable2).release();
        }
        AutoCloseable autoCloseable3 = c26Var.l;
        if (autoCloseable3 instanceof AutoCloseable) {
            autoCloseable3.close();
        } else if (autoCloseable3 instanceof ExecutorService) {
            ExecutorService executorService3 = (ExecutorService) autoCloseable3;
            if (executorService3 != ForkJoinPool.commonPool() && !(zIsTerminated3 = executorService3.isTerminated())) {
                executorService3.shutdown();
                boolean z5 = false;
                while (!zIsTerminated3) {
                    try {
                        zIsTerminated3 = executorService3.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused3) {
                        if (!z5) {
                            executorService3.shutdownNow();
                            z5 = true;
                        }
                    }
                }
                if (z5) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable3 instanceof TypedArray) {
            ((TypedArray) autoCloseable3).recycle();
        } else if (autoCloseable3 instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable3).release();
        } else {
            if (!(autoCloseable3 instanceof MediaDrm)) {
                defpackage.mi2.b();
                return null;
            }
            ((MediaDrm) autoCloseable3).release();
        }
        AutoCloseable autoCloseable4 = c26Var.m;
        if (autoCloseable4 instanceof AutoCloseable) {
            autoCloseable4.close();
        } else if (autoCloseable4 instanceof ExecutorService) {
            ExecutorService executorService4 = (ExecutorService) autoCloseable4;
            if (executorService4 != ForkJoinPool.commonPool() && !(zIsTerminated4 = executorService4.isTerminated())) {
                executorService4.shutdown();
                while (!zIsTerminated4) {
                    try {
                        zIsTerminated4 = executorService4.awaitTermination(1L, timeUnit);
                    } catch (InterruptedException unused4) {
                        if (!z2) {
                            executorService4.shutdownNow();
                            z2 = true;
                        }
                    }
                }
                if (z2) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable4 instanceof TypedArray) {
            ((TypedArray) autoCloseable4).recycle();
        } else if (autoCloseable4 instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable4).release();
        } else {
            if (!(autoCloseable4 instanceof MediaDrm)) {
                defpackage.mi2.b();
                return null;
            }
            ((MediaDrm) autoCloseable4).release();
        }
        return j59.a;
    }

    public final void a(final vq0 vq0Var) throws Exception {
        boolean zIsTerminated;
        AutoCloseable autoCloseable = this.m;
        if (autoCloseable instanceof AutoCloseable) {
            autoCloseable.close();
        } else if (autoCloseable instanceof ExecutorService) {
            ExecutorService executorService = (ExecutorService) autoCloseable;
            if (executorService != ForkJoinPool.commonPool() && !(zIsTerminated = executorService.isTerminated())) {
                executorService.shutdown();
                boolean z = false;
                while (!zIsTerminated) {
                    try {
                        zIsTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                    } catch (InterruptedException unused) {
                        if (!z) {
                            executorService.shutdownNow();
                            z = true;
                        }
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
            }
        } else if (autoCloseable instanceof TypedArray) {
            ((TypedArray) autoCloseable).recycle();
        } else if (autoCloseable instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) autoCloseable).release();
        } else {
            if (!(autoCloseable instanceof MediaDrm)) {
                defpackage.mi2.b();
                return;
            }
            ((MediaDrm) autoCloseable).release();
        }
        final b26 b26Var = new b26(vq0Var, this);
        this.m = new tp0() { // from class: qp9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                c26.a(vq0Var, b26Var);
            }
        };
        synchronized (vq0Var.E) {
            vq0Var.v.a(b26Var);
        }
    }

    public final boolean a(vh2 vh2Var) throws Exception {
        RuntimeException runtimeException;
        try {
            Boolean bool = (Boolean) this.a.a((fs2) this.d);
            boolean zBooleanValue = bool.booleanValue();
            Boolean bool2 = (Boolean) this.j.get(vh2Var);
            if (bool2 == null) {
                bool2 = Boolean.FALSE;
            }
            boolean zBooleanValue2 = bool2.booleanValue();
            this.j.put(vh2Var, bool);
            if (zBooleanValue) {
                return (this.i == zd2.ON_CONDITION && zBooleanValue2) ? false : true;
            }
            return false;
        } catch (Exception e) {
            if (e instanceof ClassCastException) {
                runtimeException = new RuntimeException(defpackage.me0.c("Condition evaluated in non-boolean result! (expression: '", this.a.d(), "')"), e);
            } else if (e instanceof vo2) {
                runtimeException = new RuntimeException(defpackage.me0.c("Condition evaluation failed! (expression: '", this.a.d(), "')"), e);
            } else {
                throw e;
            }
            this.e.a(runtimeException);
            return false;
        }
    }

    public static final void a(vq0 vq0Var, b26 b26Var) {
        synchronized (vq0Var.E) {
            vq0Var.v.b(b26Var);
        }
    }
}
