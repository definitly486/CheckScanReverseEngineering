package defpackage;

import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rg1 extends gh4 implements nl3<List<? extends kg1>, qq1> {
    public final /* synthetic */ yg1 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rg1(yg1 yg1Var) {
        super(1);
        this.f = yg1Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(List<? extends kg1> list) {
        List<? extends kg1> list2 = list;
        list2.getClass();
        List<? extends kg1> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        for (kg1 kg1Var : list3) {
            long j = kg1Var.a;
            String str = kg1Var.d;
            Gson gsonC = ht3.c();
            qg1 qg1Var = new qg1();
            gsonC.getClass();
            hv6 hv6Var = (hv6) gsonC.f(str, new x39(qg1Var.b));
            yg1 yg1Var = this.f;
            arrayList.add(yg1Var.e(j, hv6Var, new vg1(yg1Var, j, hv6Var)).i(ne7.c));
        }
        return new kq1(arrayList);
    }
}
