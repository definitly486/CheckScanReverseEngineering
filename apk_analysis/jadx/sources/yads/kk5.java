package yads;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.view.View;
import defpackage.j59;
import defpackage.nl3;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.kk5;

/* JADX INFO: loaded from: classes6.dex */
public final class kk5 {
    public final defpackage.gm3 a;
    public final defpackage.gm3 b;
    public final WeakHashMap c = new WeakHashMap();
    public final HashMap d = new HashMap();
    public final WeakHashMap e = new WeakHashMap();

    public kk5(defpackage.gm3 gm3Var, defpackage.gm3 gm3Var2) {
        this.a = gm3Var;
        this.b = gm3Var2;
    }

    public final void a(final View view, final vq0 vq0Var, final fs2 fs2Var, final br0 br0Var, List list) {
        jk5 jk5Var;
        boolean zIsTerminated;
        a(view);
        WeakHashMap weakHashMap = this.c;
        Set<r02> set = (Set) weakHashMap.get(view);
        if (set == null) {
            set = defpackage.ox2.b;
        }
        LinkedHashSet linkedHashSetX = defpackage.qn1.X(list, set);
        Set setX0 = defpackage.qn1.x0(linkedHashSetX);
        for (r02 r02Var : set) {
            if (!linkedHashSetX.contains(r02Var) && (jk5Var = (jk5) this.d.remove(r02Var)) != null) {
                AutoCloseable autoCloseable = jk5Var.a;
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
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final r02 r02Var2 = (r02) it.next();
            if (!linkedHashSetX.contains(r02Var2)) {
                setX0.add(r02Var2);
                a(r02Var2);
                this.d.put(r02Var2, new jk5(r02Var2.d().a(fs2Var, new nl3() { // from class: x0a
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return kk5.a(this.b, vq0Var, fs2Var, view, br0Var, r02Var2, ((Boolean) obj).booleanValue());
                    }
                }), view));
            }
        }
        weakHashMap.put(view, setX0);
    }

    public static final j59 a(kk5 kk5Var, vq0 vq0Var, fs2 fs2Var, View view, br0 br0Var, r02 r02Var, boolean z) {
        if (z) {
            kk5Var.a.invoke(vq0Var, fs2Var, view, br0Var, r02Var);
        } else {
            kk5Var.b.invoke(vq0Var, fs2Var, view, br0Var, r02Var);
        }
        return j59.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(final View view) {
        if (this.e.containsKey(view) || !(view instanceof hs2)) {
            return;
        }
        ((hs2) view).a(new tp0() { // from class: y0a
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                kk5.a(this.b, view);
            }
        });
        this.e.put(view, j59.a);
    }

    public static final void a(kk5 kk5Var, View view) {
        Iterable iterable = (Set) kk5Var.c.remove(view);
        if (iterable == null) {
            iterable = defpackage.ox2.b;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            kk5Var.a((r02) it.next());
        }
    }

    public final void a(r02 r02Var) {
        boolean zIsTerminated;
        Set set;
        jk5 jk5Var = (jk5) this.d.remove(r02Var);
        if (jk5Var == null) {
            return;
        }
        AutoCloseable autoCloseable = jk5Var.a;
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
        View view = (View) jk5Var.b.get();
        if (view == null || (set = (Set) this.c.get(view)) == null) {
            return;
        }
        set.remove(r02Var);
    }
}
