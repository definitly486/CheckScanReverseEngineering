package defpackage;

import yads.pe;
import yads.tt3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ni2 implements eh8.a, tt3 {
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ni2(Object obj, Object obj2, Object obj3) {
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    @Override // eh8.a
    public Object execute() {
        pi2 pi2Var = (pi2) this.b;
        hz hzVar = (hz) this.c;
        pi2Var.d.O(hzVar, (z03) this.d);
        pi2Var.a.a(hzVar, 1);
        return null;
    }

    @Override // yads.tt3
    public void invoke(Object obj) {
        ((pe) obj).getClass();
    }
}
