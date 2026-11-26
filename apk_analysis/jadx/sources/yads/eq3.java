package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class eq3 extends h {
    public final /* synthetic */ Iterator d;
    public final /* synthetic */ xx4 e;

    public eq3(Iterator it, xx4 xx4Var) {
        this.d = it;
        this.e = xx4Var;
    }

    @Override // yads.h
    public final Object a() {
        while (this.d.hasNext()) {
            Object next = this.d.next();
            if (this.e.apply(next)) {
                return next;
            }
        }
        this.b = 3;
        return null;
    }
}
