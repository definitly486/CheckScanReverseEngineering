package defpackage;

import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class cl1<T> implements k36<T> {
    public final bm3<ne4<Object>, List<? extends ef4>, df4<T>> a;
    public final dl1<j36<T>> b = new dl1<>();

    /* JADX WARN: Multi-variable type inference failed */
    public cl1(bm3<? super ne4<Object>, ? super List<? extends ef4>, ? extends df4<T>> bm3Var) {
        this.a = bm3Var;
    }

    @Override // defpackage.k36
    public final Object a(ne4 ne4Var, ArrayList arrayList) {
        Object aVar;
        j36<T> j36Var = this.b.get(d31.n(ne4Var));
        j36Var.getClass();
        wg5 wg5Var = (wg5) j36Var;
        T t = wg5Var.a.get();
        if (t == null) {
            synchronized (wg5Var) {
                t = wg5Var.a.get();
                if (t == null) {
                    t = (T) new j36();
                    wg5Var.a = new SoftReference<>(t);
                }
            }
        }
        j36 j36Var2 = t;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new gf4((ef4) it.next()));
        }
        ConcurrentHashMap<List<gf4>, k57<df4<T>>> concurrentHashMap = j36Var2.a;
        k57<df4<T>> k57Var = concurrentHashMap.get(arrayList2);
        if (k57Var == null) {
            try {
                aVar = (df4) this.a.invoke(ne4Var, arrayList);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            k57<df4<T>> k57Var2 = new k57<>(aVar);
            k57<df4<T>> k57VarPutIfAbsent = concurrentHashMap.putIfAbsent(arrayList2, k57Var2);
            k57Var = k57VarPutIfAbsent == null ? k57Var2 : k57VarPutIfAbsent;
        }
        return k57Var.b;
    }
}
