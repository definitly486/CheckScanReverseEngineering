package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class va4 extends q0<Object> {
    public final /* synthetic */ Iterator d;
    public final /* synthetic */ bf6 e;

    public va4(Iterator it, bf6 bf6Var) {
        this.d = it;
        this.e = bf6Var;
    }

    @Override // defpackage.q0
    public final Object a() {
        Object next;
        do {
            Iterator it = this.d;
            if (!it.hasNext()) {
                this.b = q0.a.DONE;
                return null;
            }
            next = it.next();
        } while (!this.e.apply(next));
        return next;
    }
}
