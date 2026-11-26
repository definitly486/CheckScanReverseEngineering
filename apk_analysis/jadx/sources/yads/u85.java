package yads;

import defpackage.ll3;
import java.util.ConcurrentModificationException;

/* JADX INFO: loaded from: classes6.dex */
public final class u85 {
    public final ll3 a;
    public Object b;

    public u85(ll3 ll3Var) {
        this.a = ll3Var;
    }

    public final Object a() {
        Object objInvoke = this.b;
        if (objInvoke == null) {
            objInvoke = this.a.invoke();
            this.b = objInvoke;
        }
        if (objInvoke != null) {
            return objInvoke;
        }
        throw new ConcurrentModificationException("Set to null by another thread");
    }

    public final boolean b() {
        return this.b != null;
    }
}
