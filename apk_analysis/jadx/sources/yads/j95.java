package yads;

import defpackage.by6;
import defpackage.ll3;

/* JADX INFO: loaded from: classes6.dex */
public final class j95 implements by6 {
    public volatile Object a;
    public volatile boolean b;
    public final /* synthetic */ ll3 c;

    public j95(ll3 ll3Var) {
        this.c = ll3Var;
    }

    @Override // defpackage.by6
    public final Object getValue(Object obj, defpackage.ze4 ze4Var) {
        Object objInvoke;
        if (this.b) {
            return this.a;
        }
        ll3 ll3Var = this.c;
        synchronized (this) {
            try {
                if (this.b) {
                    objInvoke = this.a;
                } else {
                    objInvoke = ll3Var.invoke();
                    if (objInvoke != null) {
                        this.a = objInvoke;
                        this.b = true;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objInvoke;
    }
}
