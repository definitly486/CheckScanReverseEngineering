package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class lz5 extends gh4 implements nl3<List<? extends fz5>, List<? extends kz5.a>> {
    public final /* synthetic */ kz5 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lz5(kz5 kz5Var) {
        super(1);
        this.f = kz5Var;
    }

    @Override // defpackage.nl3
    public final List<? extends kz5.a> invoke(List<? extends fz5> list) {
        List<? extends fz5> list2 = list;
        list2.getClass();
        List<? extends fz5> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        for (fz5 fz5Var : list3) {
            this.f.getClass();
            arrayList.add(kz5.a(fz5Var));
        }
        return arrayList;
    }
}
