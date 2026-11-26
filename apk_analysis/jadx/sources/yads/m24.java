package yads;

import android.content.Context;
import defpackage.j59;
import defpackage.jb7;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class m24 {
    public l24 a;
    public final t24 b;
    public final w74 c;

    public m24(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, t5 t5Var, v24 v24Var, l34 l34Var, n24 n24Var, mt4 mt4Var) {
        g34 g34Var = new g34();
        fa faVar = new fa();
        hb hbVar = new hb();
        e40 e40Var = new e40();
        zg5 zg5Var = zg5.l;
        if (zg5Var == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
        }
        this(context, e4Var, bf5Var, d9Var, t5Var, v24Var, l34Var, n24Var, mt4Var, g34Var, faVar, hbVar, e40Var, zg5Var);
    }

    public final void a() {
        x54 x54Var;
        t24 t24Var = this.b;
        l24 l24Var = this.a;
        t24Var.getClass();
        if (l24Var == null || (x54Var = l24Var.b) == null) {
            return;
        }
        l34 l34Var = t24Var.d;
        Context context = t24Var.f;
        String networkName = l24Var.c.b().getNetworkName();
        Iterator it = l34.g.iterator();
        while (it.hasNext()) {
            l34Var.a(context, (e75) it.next(), x54Var, networkName, defpackage.mx2.b);
        }
    }

    public static final j59 a(m24 m24Var, l24 l24Var) {
        m24Var.a = l24Var;
        return j59.a;
    }

    public static final l24 a(m24 m24Var) {
        return m24Var.a;
    }

    public m24(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var, t5 t5Var, v24 v24Var, l34 l34Var, n24 n24Var, mt4 mt4Var, g34 g34Var, fa faVar, hb hbVar, e40 e40Var, zg5 zg5Var) {
        t24 t24Var = new t24(context, e4Var, bf5Var, d9Var, l34Var, faVar, e40Var, g34Var);
        this.b = t24Var;
        this.c = new w74(context, e4Var, bf5Var, t5Var, v24Var, n24Var, mt4Var, t24Var, hbVar, zg5Var, new jb7(this, 1), new defpackage.tl2(this, 3));
    }
}
