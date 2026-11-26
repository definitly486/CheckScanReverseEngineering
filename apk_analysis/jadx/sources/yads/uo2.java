package yads;

import defpackage.yr;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class uo2 {
    public static final Set d;
    public final String a;
    public boolean b = true;
    public boolean c;

    static {
        r43 r43Var = r43.a;
        k53 k53Var = k53.a;
        u63 u63Var = u63.a;
        m33 m33Var = m33.a;
        n33 n33Var = n33.a;
        z63 z63Var = z63.a;
        y63 y63Var = y63.a;
        i33 i33Var = i33.a;
        d = yr.k0(new String[]{"getIntegerValue", "getNumberValue", "getStringValue", "getColorValue", "getColorValue", "getUrlValue", "getUrlValue", "getBooleanValue"});
    }

    public uo2(String str) {
        this.a = str;
    }

    public abstract Object a(bp2 bp2Var);

    public final void a(boolean z) {
        this.b = this.b && z;
    }

    public abstract List b();

    public final String c() {
        return this.a;
    }

    public abstract List d();

    public final boolean a() {
        return this.b;
    }
}
