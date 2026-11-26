package defpackage;

import android.app.Application;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class f68 extends gh4 implements nl3<a57<List<? extends jc0>>, qq1> {
    public final /* synthetic */ b68 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f68(b68 b68Var) {
        super(1);
        this.f = b68Var;
    }

    @Override // defpackage.nl3
    public final qq1 invoke(a57<List<? extends jc0>> a57Var) {
        mz7 k18Var;
        a57<List<? extends jc0>> a57Var2 = a57Var;
        a57Var2.getClass();
        List<? extends jc0> list = a57Var2.b;
        kx2 kx2Var = kx2.b;
        if (list == null) {
            list = kx2Var;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            String strA = ((jc0) obj).a();
            if (strA != null && !ta8.M(strA)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((jc0) it.next()).d());
        }
        b68 b68Var = this.f;
        b68Var.a.d1(ht3.c().j(arrayList2));
        Application application = b68Var.c;
        if (arrayList2.isEmpty()) {
            k18Var = mz7.e(kx2Var);
        } else {
            ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                String str = ((hc0.c) it2.next()).b;
                if (str == null) {
                    str = "";
                }
                arrayList3.add(new oz7(new a68(application, str)));
            }
            k18Var = new k18(arrayList3, new xq(new c68(b68Var, arrayList2), 4));
        }
        return new fq1(new p08(k18Var, new f7(new d68(b68Var), 3)));
    }
}
