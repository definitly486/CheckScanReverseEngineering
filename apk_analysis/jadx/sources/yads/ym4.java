package yads;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class ym4 {
    public final e4 a;
    public final d9 b;
    public final List c;
    public final yd3 d;

    public ym4(e4 e4Var, d9 d9Var, List list) {
        yd3 yd3Var = new yd3();
        this.a = e4Var;
        this.b = d9Var;
        this.c = list;
        this.d = yd3Var;
    }

    public final boolean a() {
        if (!this.a.m) {
            return false;
        }
        if (!this.b.B) {
            return true;
        }
        Set setA = this.d.a(this.c);
        if (setA.isEmpty()) {
            return false;
        }
        Iterator it = setA.iterator();
        while (it.hasNext()) {
            if (!((rd3) it.next()).f) {
                return true;
            }
        }
        return false;
    }
}
