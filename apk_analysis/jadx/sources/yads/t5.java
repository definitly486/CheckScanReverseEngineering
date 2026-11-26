package yads;

import android.os.SystemClock;
import defpackage.j59;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class t5 {
    public final Object a = new Object();
    public final iu4 b = new iu4();
    public final LinkedHashMap c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();

    public final void a(s5 s5Var, ju4 ju4Var, Object obj) {
        Long l;
        synchronized (this.a) {
            try {
                Map map = (Map) this.c.get(s5Var);
                Long lValueOf = (map == null || (l = (Long) map.get(obj)) == null) ? null : Long.valueOf(SystemClock.elapsedRealtime() - l.longValue());
                if (lValueOf != null) {
                    this.d.add(new r5(s5Var, ju4Var.a(lValueOf.longValue())));
                }
                Map map2 = (Map) this.c.get(s5Var);
                if (map2 != null) {
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(s5 s5Var) {
        a(s5Var, null);
    }

    public final void a(s5 s5Var) {
        a(s5Var, this.b, null);
    }

    public final void a(s5 s5Var, Object obj) {
        synchronized (this.a) {
            try {
                Map linkedHashMap = (Map) this.c.get(s5Var);
                if (linkedHashMap == null) {
                    linkedHashMap = new LinkedHashMap();
                }
                this.c.put(s5Var, linkedHashMap);
                linkedHashMap.put(obj, Long.valueOf(SystemClock.elapsedRealtime()));
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a() {
        synchronized (this.a) {
            this.c.clear();
            this.d.clear();
            j59 j59Var = j59.a;
        }
    }
}
