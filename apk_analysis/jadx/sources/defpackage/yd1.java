package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class yd1 extends gh4 implements nl3<List<? extends bf1>, List<? extends bf1>> {
    public static final yd1 f = new yd1(1);

    @Override // defpackage.nl3
    public final List<? extends bf1> invoke(List<? extends bf1> list) {
        List<? extends bf1> list2 = list;
        list2.getClass();
        List<? extends bf1> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        for (bf1 bf1Var : list3) {
            arrayList.add(bf1.a(bf1Var, ra8.y(bf1Var.b(), "\u2028", "\n")));
        }
        return arrayList;
    }
}
