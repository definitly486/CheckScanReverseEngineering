package defpackage;

import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class i41 implements h41 {
    public final ConcurrentHashMap<Integer, g41> a = new ConcurrentHashMap<>();
    public final ConcurrentHashMap<Integer, q41> b = new ConcurrentHashMap<>();

    @Override // defpackage.h41
    public final void a(int i, g41 g41Var) {
        this.a.put(Integer.valueOf(i), g41Var);
    }

    @Override // defpackage.h41
    public final void b(int i, int i2) {
        Integer numValueOf = Integer.valueOf(i);
        ConcurrentHashMap<Integer, g41> concurrentHashMap = this.a;
        g41 g41Var = concurrentHashMap.get(numValueOf);
        if (g41Var == null) {
            return;
        }
        concurrentHashMap.put(Integer.valueOf(i), new g41(g41Var.a, g41Var.b, g41Var.c, g41Var.d, g41Var.e, g41Var.f, Integer.valueOf(i2)));
    }

    @Override // defpackage.h41
    public final q41 c(int i) {
        q41 q41VarPutIfAbsent;
        Integer numValueOf = Integer.valueOf(i);
        ConcurrentHashMap<Integer, q41> concurrentHashMap = this.b;
        q41 q41Var = concurrentHashMap.get(numValueOf);
        if (q41Var == null && (q41VarPutIfAbsent = concurrentHashMap.putIfAbsent(numValueOf, (q41Var = new q41()))) != null) {
            q41Var = q41VarPutIfAbsent;
        }
        return q41Var;
    }

    @Override // defpackage.h41
    public final g41 get(int i) {
        return this.a.get(Integer.valueOf(i));
    }
}
