package yads;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class x24 {
    public final ArrayList a;
    public final v34 b;
    public final f34 c;
    public final p24 d;
    public int e;

    public x24(ArrayList arrayList, v34 v34Var, l34 l34Var, f34 f34Var, int i) {
        f34Var = (i & 8) != 0 ? new f34(new e34(l34Var)) : f34Var;
        p24 p24Var = new p24();
        this.a = arrayList;
        this.b = v34Var;
        this.c = f34Var;
        this.d = p24Var;
    }

    public final l24 a(Context context, Class cls) {
        com.monetization.ads.mediation.base.a aVar;
        x54 x54Var;
        do {
            aVar = null;
            if (this.e >= this.a.size()) {
                return null;
            }
            ArrayList arrayList = this.a;
            int i = this.e;
            this.e = i + 1;
            x54Var = (x54) arrayList.get(i);
            f34 f34Var = this.c;
            q34 q34Var = f34Var.b;
            com.monetization.ads.mediation.base.a aVarA = (q34Var == null || !q34Var.a(x54Var, cls)) ? f34Var.a.a(context, x54Var, cls) : f34Var.b.a(context, x54Var);
            if (aVarA != null) {
                aVar = aVarA;
            }
        } while (aVar == null);
        this.d.getClass();
        return new l24(aVar, x54Var, new o24(aVar), this.b);
    }
}
