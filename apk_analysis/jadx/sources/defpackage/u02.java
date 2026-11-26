package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class u02 implements e15<dq8> {
    public final /* synthetic */ d12 a;

    public u02(d12 d12Var) {
        this.a = d12Var;
    }

    @Override // defpackage.e15
    public final void a(g15 g15Var, zn5 zn5Var) {
        String str = ((dq8) zn5Var).f;
        g15Var.c.b.append(str);
        ArrayList arrayList = this.a.a;
        if (arrayList.isEmpty()) {
            return;
        }
        g15Var.c();
        str.length();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((d12.a) it.next()).a();
        }
    }
}
