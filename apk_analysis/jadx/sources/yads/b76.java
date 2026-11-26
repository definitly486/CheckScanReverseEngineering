package yads;

import android.content.res.TypedArray;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import yads.b76;

/* JADX INFO: loaded from: classes6.dex */
public final class b76 implements z66 {
    public final z66 a;
    public final LinkedHashMap b = new LinkedHashMap();
    public final ArrayList c = new ArrayList();
    public final LinkedHashMap d = new LinkedHashMap();
    public final LinkedHashMap e = new LinkedHashMap();
    public final LinkedHashMap f = new LinkedHashMap();
    public final nl3 g = new defpackage.im1(this, 5);
    public final a76 h = new a76();

    public b76(z66 z66Var) {
        this.a = z66Var;
    }

    public static final void a(List list, List list2, b76 b76Var, nl3 nl3Var) throws Exception {
        boolean zIsTerminated;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            gp4 gp4Var = (gp4) b76Var.d.get((String) it.next());
            if (gp4Var != null) {
                gp4Var.b(nl3Var);
            }
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            AutoCloseable autoCloseable = (tp0) it2.next();
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

    public final void b(u66 u66Var) {
        Iterator it = defpackage.qn1.t0(this.f.values()).iterator();
        while (it.hasNext()) {
            ((nl3) it.next()).invoke(u66Var);
        }
        gp4 gp4Var = (gp4) this.d.get(u66Var.a());
        if (gp4Var == null) {
            return;
        }
        Iterator it2 = gp4Var.iterator();
        while (true) {
            fp4 fp4Var = (fp4) it2;
            if (!fp4Var.hasNext()) {
                return;
            } else {
                ((nl3) fp4Var.next()).invoke(u66Var);
            }
        }
    }

    @Override // yads.z66
    public final void c() {
        for (zc4 zc4Var : this.c) {
            zc4Var.a.a(this.g);
            nl3 nl3Var = this.g;
            Iterator it = zc4Var.a.a.values().iterator();
            while (it.hasNext()) {
                nl3Var.invoke((u66) it.next());
            }
            zc4Var.a.b.add(this.h);
        }
    }

    @Override // yads.m76
    public final Object get(String str) {
        u66 u66VarA = a(str);
        Object objB = u66VarA != null ? u66VarA.b() : null;
        if (objB instanceof Uri) {
            objB = new q46(objB.toString());
        }
        if (objB != null) {
            return objB;
        }
        z66 z66Var = this.a;
        if (z66Var != null) {
            return z66Var.get(str);
        }
        return null;
    }

    @Override // yads.z66
    public final List b() {
        return defpackage.qn1.t0(this.b.values());
    }

    @Override // yads.z66
    public final tp0 a(final ArrayList arrayList, final nl3 nl3Var) {
        final ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (!this.b.containsKey(str)) {
                z66 z66Var = this.a;
                if ((z66Var != null ? z66Var.a(str) : null) != null) {
                    arrayList2.add(this.a.a(str, null, false, nl3Var));
                }
            }
            u66 u66VarA = a(str);
            LinkedHashMap linkedHashMap = this.d;
            if (u66VarA == null) {
                Object gp4Var = linkedHashMap.get(str);
                if (gp4Var == null) {
                    gp4Var = new gp4();
                    linkedHashMap.put(str, gp4Var);
                }
                ((gp4) gp4Var).a(nl3Var);
            } else {
                Object gp4Var2 = linkedHashMap.get(str);
                if (gp4Var2 == null) {
                    gp4Var2 = new gp4();
                    linkedHashMap.put(str, gp4Var2);
                }
                ((gp4) gp4Var2).a(nl3Var);
            }
        }
        return new tp0() { // from class: do9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() throws Exception {
                b76.a(arrayList, arrayList2, this, nl3Var);
            }
        };
    }

    @Override // yads.z66
    public final tp0 a(final String str, ao2 ao2Var, boolean z, final nl3 nl3Var) {
        if (!this.b.containsKey(str)) {
            z66 z66Var = this.a;
            if ((z66Var != null ? z66Var.a(str) : null) != null) {
                return this.a.a(str, ao2Var, z, nl3Var);
            }
        }
        u66 u66VarA = a(str);
        if (u66VarA == null) {
            if (ao2Var != null) {
                ao2Var.b.add(gt4.b(str));
                ao2Var.a();
            }
            LinkedHashMap linkedHashMap = this.d;
            Object gp4Var = linkedHashMap.get(str);
            if (gp4Var == null) {
                gp4Var = new gp4();
                linkedHashMap.put(str, gp4Var);
            }
            ((gp4) gp4Var).a(nl3Var);
        } else {
            if (z) {
                nl3Var.invoke(u66VarA);
            }
            LinkedHashMap linkedHashMap2 = this.d;
            Object gp4Var2 = linkedHashMap2.get(str);
            if (gp4Var2 == null) {
                gp4Var2 = new gp4();
                linkedHashMap2.put(str, gp4Var2);
            }
            ((gp4) gp4Var2).a(nl3Var);
        }
        return new tp0() { // from class: co9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                b76.a(this.b, str, nl3Var);
            }
        };
    }

    public static final void a(b76 b76Var, String str, nl3 nl3Var) {
        gp4 gp4Var = (gp4) b76Var.d.get(str);
        if (gp4Var != null) {
            gp4Var.b(nl3Var);
        }
    }

    @Override // yads.z66
    public final u66 a(String str) {
        u66 u66Var;
        boolean zContains;
        u66 u66VarA;
        u66 u66Var2 = (u66) this.b.get(str);
        if (u66Var2 != null) {
            return u66Var2;
        }
        z66 z66Var = this.a;
        if (z66Var != null && (u66VarA = z66Var.a(str)) != null) {
            return u66VarA;
        }
        Iterator it = this.c.iterator();
        do {
            u66Var = null;
            if (!it.hasNext()) {
                return null;
            }
            zc4 zc4Var = (zc4) it.next();
            zc4Var.b.invoke(str);
            yf2 yf2Var = zc4Var.a;
            synchronized (yf2Var.c) {
                zContains = yf2Var.c.contains(str);
            }
            if (zContains) {
                u66Var = (u66) yf2Var.a.get(str);
            }
        } while (u66Var == null);
        return u66Var;
    }

    @Override // yads.z66
    public final void a() {
        for (zc4 zc4Var : this.c) {
            nl3 nl3Var = this.g;
            Iterator it = zc4Var.a.a.values().iterator();
            while (it.hasNext()) {
                ((u66) it.next()).a.b(nl3Var);
            }
            zc4Var.a.b.remove(this.h);
        }
        this.f.clear();
    }

    @Override // yads.z66
    public final void a(u66 u66Var) {
        u66 u66Var2 = (u66) this.b.put(u66Var.a(), u66Var);
        if (u66Var2 == null) {
            u66Var.a.a(this.g);
            b(u66Var);
            return;
        }
        this.b.put(u66Var.a(), u66Var2);
        throw new d76(defpackage.me0.c("Variable '", u66Var.a(), "' already declared!"));
    }

    @Override // yads.z66
    public final void a(gs2 gs2Var, nl3 nl3Var) {
        this.f.put(gs2Var, nl3Var);
        z66 z66Var = this.a;
        if (z66Var != null) {
            z66Var.a(gs2Var, new defpackage.ol1(2, this, nl3Var));
        }
    }

    public static final j59 a(b76 b76Var, nl3 nl3Var, u66 u66Var) {
        if (b76Var.b.get(u66Var.a()) == null) {
            nl3Var.invoke(u66Var);
        }
        return j59.a;
    }

    @Override // yads.z66
    public final tp0 a(final List list, final nl3 nl3Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            LinkedHashMap linkedHashMap = this.e;
            Object gp4Var = linkedHashMap.get(str);
            if (gp4Var == null) {
                gp4Var = new gp4();
                linkedHashMap.put(str, gp4Var);
            }
            ((gp4) gp4Var).a(nl3Var);
        }
        return new tp0() { // from class: eo9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                b76.a(list, this, nl3Var);
            }
        };
    }

    public static final j59 a(b76 b76Var, u66 u66Var) {
        b76Var.b(u66Var);
        return j59.a;
    }

    public static final void a(List list, b76 b76Var, nl3 nl3Var) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            gp4 gp4Var = (gp4) b76Var.e.get((String) it.next());
            if (gp4Var != null) {
                gp4Var.b(nl3Var);
            }
        }
    }
}
