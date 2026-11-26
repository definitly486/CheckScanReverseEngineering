package yads;

import android.content.Context;
import defpackage.j59;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class rk4 {
    public final jo6 a;
    public final pk4 b;

    public rk4(Context context, ko6 ko6Var) {
        jo6 jo6Var = ko6Var.a.a(context) ? new jo6(context) : null;
        pk4 pk4Var = new pk4();
        this.a = jo6Var;
        this.b = pk4Var;
    }

    public final void a() {
        List listT0;
        jo6 jo6Var = this.a;
        if (jo6Var != null) {
            synchronized (jo6Var.b) {
                listT0 = defpackage.qn1.t0(jo6Var.c);
                jo6Var.c.clear();
                j59 j59Var = j59.a;
            }
            Iterator it = listT0.iterator();
            while (it.hasNext()) {
                jo6Var.a.a((d96) it.next());
            }
        }
    }
}
