package defpackage;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class lr7 extends q0<Object> {
    public final Iterator<Object> d;
    public final /* synthetic */ Set e;
    public final /* synthetic */ Set f;

    public lr7(Set set, Set set2) {
        this.e = set;
        this.f = set2;
        this.d = set.iterator();
    }

    @Override // defpackage.q0
    public final Object a() {
        Object next;
        do {
            Iterator<Object> it = this.d;
            if (!it.hasNext()) {
                this.b = q0.a.DONE;
                return null;
            }
            next = it.next();
        } while (!this.f.contains(next));
        return next;
    }
}
