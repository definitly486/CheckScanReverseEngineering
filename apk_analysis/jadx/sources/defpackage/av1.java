package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class av1<T> implements fq7<T> {
    public final nl3<ne4<?>, df4<T>> a;
    public final ConcurrentHashMap<Class<?>, ox0<T>> b = new ConcurrentHashMap<>();

    /* JADX WARN: Multi-variable type inference failed */
    public av1(nl3<? super ne4<?>, ? extends df4<T>> nl3Var) {
        this.a = nl3Var;
    }

    @Override // defpackage.fq7
    public final df4<T> a(ne4<Object> ne4Var) {
        ox0<T> ox0VarPutIfAbsent;
        Class<?> clsN = d31.n(ne4Var);
        ConcurrentHashMap<Class<?>, ox0<T>> concurrentHashMap = this.b;
        ox0<T> ox0Var = concurrentHashMap.get(clsN);
        if (ox0Var == null && (ox0VarPutIfAbsent = concurrentHashMap.putIfAbsent(clsN, (ox0Var = new ox0<>(this.a.invoke(ne4Var))))) != null) {
            ox0Var = ox0VarPutIfAbsent;
        }
        return ox0Var.a;
    }
}
