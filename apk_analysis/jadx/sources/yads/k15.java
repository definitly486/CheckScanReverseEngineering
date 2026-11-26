package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k15 implements nb6 {
    public final Context a;
    public final List b;

    public k15(Context context, ja6 ja6Var) {
        this.a = context.getApplicationContext();
        p90 p90Var = ja6Var.a;
        long j = p90Var.i;
        ArrayList arrayList = p90Var.d;
        ArrayList<v06> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if ("progress".equals(((v06) obj).a)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (v06 v06Var : arrayList2) {
            q86 q86Var = v06Var.c;
            j15 j15Var = null;
            if (q86Var != null) {
                p86 p86Var = p86.MILLISECONDS;
                p86 p86Var2 = q86Var.b;
                Long lValueOf = p86Var == p86Var2 ? Long.valueOf((long) q86Var.c) : p86.PERCENTS == p86Var2 ? Long.valueOf((long) ((q86Var.c / 100.0f) * j)) : null;
                if (lValueOf != null) {
                    j15Var = new j15(v06Var.b, lValueOf.longValue());
                }
            }
            if (j15Var != null) {
                arrayList3.add(j15Var);
            }
        }
        this.b = new ArrayList(arrayList3);
    }

    @Override // yads.nb6
    public final void a(long j, long j2) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            j15 j15Var = (j15) it.next();
            if (j15Var.b <= j2) {
                wd6 wd6VarA = wd6.c.a(this.a);
                wd6VarA.b.a(new av4(wd6VarA.a, j15Var.a, new oi6()));
                it.remove();
            }
        }
    }
}
