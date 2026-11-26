package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sm0 extends gh4 implements nl3<b36<? extends Integer, ? extends List<? extends iq6>>, b36<? extends Integer, ? extends List<? extends er6>>> {
    public static final sm0 f = new sm0(1);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final b36<? extends Integer, ? extends List<? extends er6>> invoke(b36<? extends Integer, ? extends List<? extends iq6>> b36Var) {
        b36<? extends Integer, ? extends List<? extends iq6>> b36Var2 = b36Var;
        b36Var2.getClass();
        int iIntValue = ((Number) b36Var2.b).intValue();
        List list = (List) b36Var2.c;
        Integer numValueOf = Integer.valueOf(iIntValue);
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((iq6) it.next()).a());
        }
        return new b36<>(numValueOf, arrayList);
    }
}
