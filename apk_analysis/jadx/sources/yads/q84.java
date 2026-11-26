package yads;

import defpackage.yr;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class q84 implements k75 {
    public static final Object e = new Object();
    public final wg a;
    public final boolean b;
    public final defpackage.y22 c;
    public final defpackage.cl4 d;

    public q84(wg wgVar, defpackage.cl4 cl4Var, boolean z) {
        defpackage.y22 y22VarA = k90.a();
        this.a = wgVar;
        this.b = z;
        this.c = y22VarA;
        this.d = cl4Var;
    }

    public static void a(String str, Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(defpackage.m05.b(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), defpackage.aq5.e(new Object[]{entry.getValue()}));
        }
        linkedHashMap.toString();
    }

    public final void b(Map map) {
        if (this.a != null) {
            defpackage.av0.c(this.c, null, null, new m84(this, map, null), 3);
        }
    }

    @Override // yads.k75
    public final void reportError(String str, Throwable th) {
        if (!this.b || this.a == null) {
            return;
        }
        defpackage.av0.c(this.c, null, null, new n84(this, str, th, null), 3);
    }

    public static void a(Throwable th) {
        Objects.toString(th);
    }

    public static void a(String str, Throwable th) {
        Objects.toString(th);
    }

    public final void a(g75 g75Var) {
        if (this.a != null) {
            defpackage.av0.c(this.c, null, null, new o84(this, g75Var, null), 3);
        }
    }

    public static void a(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(defpackage.m05.b(map.size()));
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), yr.h0((Object[]) entry.getValue()));
        }
        linkedHashMap.toString();
    }
}
