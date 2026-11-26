package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class s61 extends gh4 implements nl3<List<? extends vh6>, List<? extends ui6>> {
    public static final s61 f = new s61(1);

    @Override // defpackage.nl3
    public final List<? extends ui6> invoke(List<? extends vh6> list) {
        List<? extends vh6> list2 = list;
        list2.getClass();
        List<? extends vh6> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        for (vh6 vh6Var : list3) {
            vh6Var.getClass();
            arrayList.add(new ui6(vh6Var.c(), vh6Var.d(), vh6Var.a(), vh6Var.b()));
        }
        return arrayList;
    }
}
