package defpackage;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class g15 {
    public final x05 a;
    public final g27 b;
    public final f58 c;
    public final Map<Class<? extends zn5>, e15<? extends zn5>> d;

    public static class a {
        public final HashMap a = new HashMap();

        public final a a(Class cls, e15 e15Var) {
            this.a.put(cls, e15Var);
            return this;
        }
    }

    public g15(x05 x05Var, g27 g27Var, f58 f58Var, Map map, sj0 sj0Var) {
        this.a = x05Var;
        this.b = g27Var;
        this.c = f58Var;
        this.d = map;
    }

    public final void a(zn5 zn5Var) {
        if (zn5Var.e != null) {
            b();
            this.c.a('\n');
        }
    }

    public final void b() {
        f58 f58Var = this.c;
        StringBuilder sb = f58Var.b;
        if (sb.length() <= 0 || '\n' == sb.charAt(sb.length() - 1)) {
            return;
        }
        f58Var.a('\n');
    }

    public final int c() {
        return this.c.b.length();
    }

    public final <N extends zn5> void d(N n, int i) {
        Class<?> cls = n.getClass();
        x05 x05Var = this.a;
        e58 e58Var = x05Var.e.a.get(cls);
        if (e58Var != null) {
            Object objA = e58Var.a(x05Var, this.b);
            f58 f58Var = this.c;
            StringBuilder sb = f58Var.b;
            int length = sb.length();
            int length2 = sb.length();
            if (length <= i || i < 0 || length > length2) {
                return;
            }
            f58.c(f58Var, objA, i, length);
        }
    }

    public final void e(zn5 zn5Var) {
        e15<? extends zn5> e15Var = this.d.get(zn5Var.getClass());
        if (e15Var != null) {
            e15Var.a(this, zn5Var);
        } else {
            f(zn5Var);
        }
    }

    public final void f(zn5 zn5Var) {
        zn5 zn5Var2 = zn5Var.b;
        while (zn5Var2 != null) {
            zn5 zn5Var3 = zn5Var2.e;
            zn5Var2.a(this);
            zn5Var2 = zn5Var3;
        }
    }
}
