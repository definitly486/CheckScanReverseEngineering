package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.koin.core.error.DefinitionOverrideException;

/* JADX INFO: loaded from: classes5.dex */
public final class hg4 {
    public final lx2 a = new lx2();
    public final f12 b = new f12(this);
    public final bf7 c = new bf7(this);
    public final f64 d = new f64(this);
    public final fs6 e = new fs6(this);
    public final jx0 f;

    public hg4() {
        new HashMap();
        this.f = new jx0();
    }

    public final void a() {
        lx2 lx2Var = this.a;
        lx2Var.getClass();
        lx2Var.a(uo4.DEBUG, "Create eager instances ...");
        long jB = dd5.b();
        f64 f64Var = this.d;
        ConcurrentHashMap concurrentHashMap = f64Var.c;
        m08[] m08VarArr = (m08[]) concurrentHashMap.values().toArray(new m08[0]);
        ArrayList arrayListA = u96.a(Arrays.copyOf(m08VarArr, m08VarArr.length));
        concurrentHashMap.clear();
        hg4 hg4Var = f64Var.a;
        z37 z37Var = new z37(hg4Var.a, hg4Var.c.d, x07.a(rn5.class), null, null);
        Iterator it = arrayListA.iterator();
        while (it.hasNext()) {
            ((m08) it.next()).c(z37Var);
        }
        long jA = qv8.a.C0320a.a(jB);
        StringBuilder sb = new StringBuilder("Created eager instances in ");
        wt2.a aVar = wt2.c;
        sb.append(wt2.k(jA, au2.MICROSECONDS) / 1000.0d);
        sb.append(" ms");
        lx2Var.a(uo4.DEBUG, sb.toString());
    }

    public final void b(List<tc5> list, boolean z, boolean z2) {
        Object next;
        LinkedHashSet<tc5> linkedHashSetA = uc5.a(list);
        f64 f64Var = this.d;
        ConcurrentHashMap concurrentHashMap = f64Var.c;
        for (tc5 tc5Var : linkedHashSetA) {
            for (Map.Entry<String, d64<?>> entry : tc5Var.c.entrySet()) {
                String key = entry.getKey();
                d64<?> value = entry.getValue();
                gi0<?> gi0Var = value.a;
                lx2 lx2Var = f64Var.a.a;
                key.getClass();
                gi0<?> gi0Var2 = value.a;
                ConcurrentHashMap concurrentHashMap2 = f64Var.b;
                if (((d64) concurrentHashMap2.get(key)) != null) {
                    if (!z) {
                        throw new DefinitionOverrideException("Already existing definition for " + gi0Var2 + " at " + key);
                    }
                    lx2Var.getClass();
                    lx2Var.a(uo4.WARNING, "(+) override index '" + key + "' -> '" + gi0Var2 + '\'');
                    Iterator it = concurrentHashMap.values().iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!((m08) next).a.equals(gi0Var2));
                    if (((m08) next) != null) {
                        concurrentHashMap.remove(Integer.valueOf(gi0Var2.hashCode()));
                    }
                }
                lx2Var.getClass();
                lx2Var.a(uo4.DEBUG, "(+) index '" + key + "' -> '" + gi0Var2 + '\'');
                concurrentHashMap2.put(key, value);
            }
            Iterator<T> it2 = tc5Var.b.iterator();
            while (it2.hasNext()) {
                m08 m08Var = (m08) it2.next();
                concurrentHashMap.put(Integer.valueOf(m08Var.a.hashCode()), m08Var);
            }
        }
        bf7 bf7Var = this.c;
        bf7Var.getClass();
        Iterator it3 = linkedHashSetA.iterator();
        while (it3.hasNext()) {
            bf7Var.b.addAll(((tc5) it3.next()).d);
        }
        if (z2) {
            a();
        }
    }

    public final void c(List<tc5> list) {
        LinkedHashSet<tc5> linkedHashSetA = uc5.a(list);
        f64 f64Var = this.d;
        f64Var.getClass();
        for (tc5 tc5Var : linkedHashSetA) {
            ConcurrentHashMap concurrentHashMap = f64Var.b;
            Set<String> setKeySet = tc5Var.c.keySet();
            setKeySet.getClass();
            for (String str : setKeySet) {
                d64 d64Var = (d64) concurrentHashMap.get(str);
                if (d64Var != null) {
                    d64Var.b();
                }
                concurrentHashMap.remove(str);
            }
        }
    }
}
