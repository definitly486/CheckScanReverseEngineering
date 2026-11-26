package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class bv1<T> implements k36<T> {
    public final bm3<ne4<Object>, List<? extends ef4>, df4<T>> a;
    public final ConcurrentHashMap<Class<?>, j36<T>> b = new ConcurrentHashMap<>();

    /* JADX WARN: Multi-variable type inference failed */
    public bv1(bm3<? super ne4<Object>, ? super List<? extends ef4>, ? extends df4<T>> bm3Var) {
        this.a = bm3Var;
    }

    @Override // defpackage.k36
    public final Object a(ne4 ne4Var, ArrayList arrayList) {
        Object aVar;
        j36<T> j36VarPutIfAbsent;
        Class<?> clsN = d31.n(ne4Var);
        ConcurrentHashMap<Class<?>, j36<T>> concurrentHashMap = this.b;
        j36<T> j36Var = concurrentHashMap.get(clsN);
        if (j36Var == null && (j36VarPutIfAbsent = concurrentHashMap.putIfAbsent(clsN, (j36Var = new j36<>()))) != null) {
            j36Var = j36VarPutIfAbsent;
        }
        j36<T> j36Var2 = j36Var;
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new gf4((ef4) it.next()));
        }
        ConcurrentHashMap<List<gf4>, k57<df4<T>>> concurrentHashMap2 = j36Var2.a;
        k57<df4<T>> k57Var = concurrentHashMap2.get(arrayList2);
        if (k57Var == null) {
            try {
                aVar = (df4) this.a.invoke(ne4Var, arrayList);
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            k57<df4<T>> k57Var2 = new k57<>(aVar);
            k57<df4<T>> k57VarPutIfAbsent = concurrentHashMap2.putIfAbsent(arrayList2, k57Var2);
            k57Var = k57VarPutIfAbsent == null ? k57Var2 : k57VarPutIfAbsent;
        }
        return k57Var.b;
    }
}
