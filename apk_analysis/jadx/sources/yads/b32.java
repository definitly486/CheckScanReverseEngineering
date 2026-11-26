package yads;

import defpackage.nl3;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class b32 implements i36 {
    public final /* synthetic */ k32 a;
    public final /* synthetic */ z22 b;
    public final /* synthetic */ n32 c;
    public final /* synthetic */ tt d;

    public b32(k32 k32Var, z22 z22Var, n32 n32Var, tt ttVar) {
        this.a = k32Var;
        this.b = z22Var;
        this.c = n32Var;
        this.d = ttVar;
    }

    @Override // yads.i36
    public final void a(Object obj) {
        Object next;
        String str = (String) obj;
        if (str == null || this.a.k() == null || str.equals(this.a.k())) {
            return;
        }
        Iterator it = this.b.I.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!defpackage.aa4.e(((y22) next).d, str));
        y22 y22Var = (y22) next;
        n32 n32Var = this.c;
        z22 z22Var = this.b;
        String str2 = z22Var.p;
        if (str2 == null && (str2 = z22Var.x) == null) {
            str2 = "";
        }
        this.d.a.a(n32Var.a(str2, y22Var, str), true);
    }

    @Override // yads.i36
    public final void a(nl3 nl3Var) {
        this.a.setVariableUpdater(nl3Var);
    }
}
