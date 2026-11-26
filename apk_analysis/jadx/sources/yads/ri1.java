package yads;

import defpackage.u96;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ri1 implements oi1 {
    public final oi1 a;
    public final List b = u96.h(new ai1());

    public ri1(oi1 oi1Var) {
        this.a = oi1Var;
    }

    @Override // yads.oi1
    public final du3 a(String str, ji1 ji1Var) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            str = ((ai1) ((xi1) it.next())).a(str);
        }
        return this.a.a(str, ji1Var);
    }

    @Override // yads.oi1
    public final du3 b(String str, ji1 ji1Var) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            str = ((ai1) ((xi1) it.next())).a(str);
        }
        return this.a.b(str, ji1Var);
    }
}
