package yads;

import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class q2 {
    public static final p2 b = new p2();
    public static volatile q2 c;
    public final LinkedHashMap a = new LinkedHashMap();

    public q2() {
        a("window_type_browser", new b2());
        a("window_type_activity_result", new t2());
    }

    public final synchronized void a(String str, o2 o2Var) {
        if (!this.a.containsKey(str)) {
            this.a.put(str, o2Var);
        }
    }
}
