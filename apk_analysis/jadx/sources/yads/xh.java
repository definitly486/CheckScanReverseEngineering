package yads;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
public final class xh {
    public final mf a;
    public final defpackage.y22 b;
    public final uh c;
    public final vh d;
    public final ef e;
    public final j90 f;
    public final gf g;
    public final AtomicBoolean h = new AtomicBoolean(false);

    public xh(mf mfVar, defpackage.y22 y22Var, uh uhVar, vh vhVar, ef efVar, q84 q84Var) {
        this.a = mfVar;
        this.b = y22Var;
        this.c = uhVar;
        this.d = vhVar;
        this.e = efVar;
        this.f = new j90(q84Var);
        this.g = new gf(mfVar.a);
    }

    public static final void a(xh xhVar, ArrayList arrayList) {
        Long l;
        xhVar.getClass();
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            Long lValueOf = Long.valueOf(((us4) it.next()).a.a);
            while (it.hasNext()) {
                Long lValueOf2 = Long.valueOf(((us4) it.next()).a.a);
                if (lValueOf.compareTo(lValueOf2) < 0) {
                    lValueOf = lValueOf2;
                }
            }
            l = lValueOf;
        } else {
            l = null;
        }
        if (l != null) {
            long jLongValue = l.longValue();
            long jB = ((av3) xhVar.e.a).b("ExitInfoAnrLastReportedTimestamp");
            ef efVar = xhVar.e;
            ((av3) efVar.a).a("ExitInfoAnrLastReportedTimestamp", Math.max(jB, jLongValue));
        }
    }
}
