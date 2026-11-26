package yads;

import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class it5 {
    public static volatile it5 b;
    public static final Object c = new Object();
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a(dr3 dr3Var, Object obj) {
        synchronized (c) {
            Set set = (Set) this.a.get(dr3Var);
            if (set != null) {
                set.remove(obj);
            }
        }
    }

    public final void b(dr3 dr3Var, Object obj) {
        synchronized (c) {
            try {
                Set linkedHashSet = (Set) this.a.get(dr3Var);
                if (linkedHashSet == null) {
                    linkedHashSet = new LinkedHashSet();
                    this.a.put(dr3Var, linkedHashSet);
                }
                linkedHashSet.add(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
