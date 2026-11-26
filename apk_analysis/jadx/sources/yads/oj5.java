package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class oj5 extends h {
    public final Iterator d;
    public final /* synthetic */ pj5 e;

    public oj5(pj5 pj5Var) {
        this.e = pj5Var;
        this.d = pj5Var.b.iterator();
    }

    @Override // yads.h
    public final Object a() {
        while (this.d.hasNext()) {
            Object next = this.d.next();
            if (this.e.c.contains(next)) {
                return next;
            }
        }
        this.b = 3;
        return null;
    }
}
