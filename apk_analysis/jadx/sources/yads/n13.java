package yads;

import defpackage.j59;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class n13 {
    public final defpackage.y22 a;
    public final Map b;
    public final al0 c;
    public final uz4 d;
    public final g1 e;

    public n13(defpackage.y22 y22Var, Map map) {
        al0 al0Var = al0.a;
        uz4 uz4Var = new uz4();
        if (g1.d == null) {
            synchronized (g1.c) {
                try {
                    if (g1.d == null) {
                        g1.d = new g1();
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        g1 g1Var = g1.d;
        if (g1Var == null) {
            defpackage.fg.c("Required value was null.");
            throw null;
        }
        this.a = y22Var;
        this.b = map;
        this.c = al0Var;
        this.d = uz4Var;
        this.e = g1Var;
    }
}
