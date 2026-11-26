package defpackage;

import com.bumptech.glide.Registry;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class g47 implements t82, s82.a<Object> {
    public final od2 b;
    public final md2<?> c;
    public int d;
    public int e = -1;
    public kf4 f;
    public List<nc5<File, ?>> g;
    public int h;
    public volatile nc5.a<?> i;
    public File j;
    public h47 k;

    public g47(md2 md2Var, od2 od2Var) {
        this.c = md2Var;
        this.b = od2Var;
    }

    @Override // defpackage.t82
    public final boolean b() {
        List<Class<?>> list;
        ArrayList arrayListC;
        ArrayList arrayListA = this.c.a();
        boolean z = false;
        if (!arrayListA.isEmpty()) {
            md2<?> md2Var = this.c;
            Registry registryA = md2Var.c.a();
            Class<?> cls = md2Var.d.getClass();
            Class<?> cls2 = md2Var.g;
            Class<?> cls3 = md2Var.k;
            rc5 rc5Var = registryA.h;
            gf5 andSet = rc5Var.a.getAndSet(null);
            if (andSet == null) {
                andSet = new gf5(cls, cls2, cls3);
            } else {
                andSet.a = cls;
                andSet.b = cls2;
                andSet.c = cls3;
            }
            synchronized (rc5Var.b) {
                list = rc5Var.b.get(andSet);
            }
            rc5Var.a.set(andSet);
            List list2 = list;
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                pc5 pc5Var = registryA.a;
                synchronized (pc5Var) {
                    arrayListC = pc5Var.a.c(cls);
                }
                Iterator it = arrayListC.iterator();
                while (it.hasNext()) {
                    for (Class cls4 : registryA.c.b((Class) it.next(), cls2)) {
                        if (!registryA.f.a(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                            arrayList.add(cls4);
                        }
                    }
                }
                rc5 rc5Var2 = registryA.h;
                List<Class<?>> listUnmodifiableList = Collections.unmodifiableList(arrayList);
                synchronized (rc5Var2.b) {
                    rc5Var2.b.put(new gf5(cls, cls2, cls3), listUnmodifiableList);
                }
                list2 = arrayList;
            }
            if (!list2.isEmpty()) {
                while (true) {
                    List<nc5<File, ?>> list3 = this.g;
                    if (list3 != null && this.h < list3.size()) {
                        this.i = null;
                        while (!z && this.h < this.g.size()) {
                            List<nc5<File, ?>> list4 = this.g;
                            int i = this.h;
                            this.h = i + 1;
                            nc5<File, ?> nc5Var = list4.get(i);
                            File file = this.j;
                            md2<?> md2Var2 = this.c;
                            this.i = nc5Var.a(file, md2Var2.e, md2Var2.f, md2Var2.i);
                            if (this.i != null && this.c.c(this.i.c.a()) != null) {
                                this.i.c.f(this.c.o, this);
                                z = true;
                            }
                        }
                        return z;
                    }
                    int i2 = this.e + 1;
                    this.e = i2;
                    if (i2 >= list2.size()) {
                        int i3 = this.d + 1;
                        this.d = i3;
                        if (i3 >= arrayListA.size()) {
                            break;
                        }
                        this.e = 0;
                    }
                    kf4 kf4Var = (kf4) arrayListA.get(this.d);
                    Class cls5 = (Class) list2.get(this.e);
                    s19<Z> s19VarE = this.c.e(cls5);
                    md2<?> md2Var3 = this.c;
                    this.k = new h47(md2Var3.c.a, kf4Var, md2Var3.n, md2Var3.e, md2Var3.f, s19VarE, cls5, md2Var3.i);
                    File fileB = ((kz2.c) md2Var3.h).a().b(this.k);
                    this.j = fileB;
                    if (fileB != null) {
                        this.f = kf4Var;
                        this.g = this.c.c.a().f(fileB);
                        this.h = 0;
                    }
                }
            } else if (!File.class.equals(this.c.k)) {
                StringBuilder sb = new StringBuilder("Failed to find any load path from ");
                sb.append(this.c.d.getClass());
                Class<?> cls6 = this.c.k;
                sb.append(" to ");
                sb.append(cls6);
                throw new IllegalStateException(sb.toString());
            }
        }
        return false;
    }

    @Override // defpackage.t82
    public final void cancel() {
        nc5.a<?> aVar = this.i;
        if (aVar != null) {
            aVar.c.cancel();
        }
    }

    @Override // s82.a
    public final void d(Object obj) {
        this.b.c(this.f, obj, this.i.c, y82.RESOURCE_DISK_CACHE, this.k);
    }

    @Override // s82.a
    public final void e(Exception exc) {
        this.b.a(this.k, exc, this.i.c, y82.RESOURCE_DISK_CACHE);
    }
}
