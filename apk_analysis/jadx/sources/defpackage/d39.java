package defpackage;

import android.content.Context;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class d39 {
    public static volatile r72 e;
    public final hm1 a;
    public final hm1 b;
    public final ie7 c;
    public final r89 d;

    public d39(hm1 hm1Var, hm1 hm1Var2, ie7 ie7Var, r89 r89Var, jk9 jk9Var) {
        this.a = hm1Var;
        this.b = hm1Var2;
        this.c = ie7Var;
        this.d = r89Var;
        jk9Var.a.execute(new x(jk9Var, 3));
    }

    public static d39 a() {
        r72 r72Var = e;
        if (r72Var != null) {
            return r72Var.h.get();
        }
        ah.f("Not initialized!");
        return null;
    }

    public static void b(Context context) {
        if (e == null) {
            synchronized (d39.class) {
                try {
                    if (e == null) {
                        q72 q72Var = new q72();
                        context.getClass();
                        q72Var.a = context;
                        e = q72Var.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final u29 c(kx0 kx0Var) {
        byte[] bytes;
        Set setUnmodifiableSet = kx0Var != null ? Collections.unmodifiableSet(kx0.d) : Collections.singleton(new iy2("proto"));
        hz.a aVarA = s29.a();
        kx0Var.getClass();
        aVarA.a = "cct";
        String str = kx0Var.a;
        String str2 = kx0Var.b;
        if (str2 == null && str == null) {
            bytes = null;
        } else {
            if (str2 == null) {
                str2 = "";
            }
            bytes = pg.g("1$", str, "\\", str2).getBytes(Charset.forName("UTF-8"));
        }
        aVarA.b = bytes;
        return new u29(setUnmodifiableSet, aVarA.a(), this);
    }
}
