package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class la1 implements zb9.g {
    public final /* synthetic */ ka1 a;

    public la1(ka1 ka1Var) {
        this.a = ka1Var;
    }

    @Override // zb9.g
    public final void a(zb9 zb9Var) {
        float fFloatValue = Float.valueOf(zb9Var.j().toString()).floatValue();
        ka1 ka1Var = this.a;
        ka1Var.g = fFloatValue;
        Iterator<pq7.c> it = ka1Var.b.j.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }
}
