package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class f36 extends h36<Iterable<Object>> {
    public final /* synthetic */ h36 a;

    public f36(h36 h36Var) {
        this.a = h36Var;
    }

    @Override // defpackage.h36
    public final void a(i37 i37Var, Iterable<Object> iterable) {
        Iterable<Object> iterable2 = iterable;
        if (iterable2 == null) {
            return;
        }
        Iterator<Object> it = iterable2.iterator();
        while (it.hasNext()) {
            this.a.a(i37Var, it.next());
        }
    }
}
