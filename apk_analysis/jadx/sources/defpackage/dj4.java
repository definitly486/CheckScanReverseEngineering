package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dj4 extends gh4 implements nl3<a57<li4>, ur6> {
    public final /* synthetic */ aj4 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dj4(aj4 aj4Var) {
        super(1);
        this.f = aj4Var;
    }

    @Override // defpackage.nl3
    public final ur6 invoke(a57<li4> a57Var) {
        String strB;
        a57<li4> a57Var2 = a57Var;
        a57Var2.getClass();
        int i = a57Var2.a.e;
        aj4 aj4Var = this.f;
        if (i != 200) {
            b57 b57Var = a57Var2.c;
            if (b57Var == null) {
                return ur6.b.a;
            }
            o03 o03Var = (o03) aj4Var.d.a(o03.Companion.serializer(), b57Var.v());
            String str = o03Var.c;
            String str2 = o03Var.b;
            String str3 = o03Var.a;
            String str4 = o03Var.d;
            if (str == null || ta8.M(str) || str4 == null || ta8.M(str4)) {
                if (str3 == null) {
                    str3 = "";
                }
                return new ur6.a(str3, str2 != null ? str2 : "");
            }
            if (str3 == null) {
                str3 = "";
            }
            return new ur6.c(str3, str2 != null ? str2 : "", o03Var.c, str4);
        }
        li4 li4Var = a57Var2.b;
        if (li4Var != null && !li4Var.d() && (strB = li4Var.b()) != null && !ta8.M(strB)) {
            String strE = li4Var.e();
            String strC = li4Var.c();
            String strA = li4Var.a();
            return new ur6.c(strE, strC, strA != null ? strA : "", li4Var.b());
        }
        hi0<List<wk4>> hi0Var = aj4Var.e;
        List<wk4> listJ = hi0Var.j();
        if (listJ == null) {
            listJ = kx2.b;
        }
        ArrayList arrayList = new ArrayList(listJ);
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object objL = (wk4) it.next();
            if (objL instanceof hi4) {
                objL = hi4.l((hi4) objL, false, 15);
            } else if (objL instanceof ti4) {
                ti4 ti4Var = (ti4) objL;
                wi4 wi4VarM = wi4.m(ti4Var.a, false, 15);
                wi4 wi4Var = ti4Var.b;
                objL = new ti4(wi4VarM, wi4Var != null ? wi4.m(wi4Var, false, 15) : null);
            } else if (objL instanceof ik4) {
                objL = ik4.d((ik4) objL, null, false, 447);
            } else if (objL instanceof mh4) {
                objL = mh4.d((mh4) objL, false, 15);
            } else if (objL instanceof qj4) {
                objL = qj4.l((qj4) objL, false);
            }
            arrayList2.add(objL);
        }
        hi0Var.onNext(arrayList2);
        String strE2 = li4Var != null ? li4Var.e() : null;
        if (strE2 == null) {
            strE2 = "";
        }
        String strC2 = li4Var != null ? li4Var.c() : null;
        return new ur6.d(strE2, strC2 != null ? strC2 : "");
    }
}
