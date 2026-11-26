package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class t9 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t9(ts5 ts5Var, ms5 ms5Var) {
        super(1);
        this.f = 2;
        this.g = ms5Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        boolean zA;
        boolean z;
        x9 x9Var;
        Iterator it;
        Object next;
        h57 h57VarB;
        g57 g57Var;
        zf zfVarA;
        String strA;
        g57 g57Var2;
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                List list = (List) obj;
                list.getClass();
                List list2 = list;
                x9 x9Var2 = (x9) obj2;
                ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    ww3 ww3Var = (ww3) it2.next();
                    String strE = ww3Var.e();
                    String strD = ww3Var.d();
                    String strI = ww3Var.i();
                    String strG = ww3Var.g();
                    String strF = ww3Var.f();
                    String strB = ww3Var.b();
                    String strJ = ww3Var.j();
                    if (ww3Var.a()) {
                        zA = !x9Var2.b.A0();
                    } else {
                        zA = ww3Var.a();
                    }
                    List<lb8> listC = ww3Var.c();
                    if ((listC instanceof Collection) && listC.isEmpty()) {
                        z = false;
                    } else {
                        Iterator<T> it3 = listC.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z = false;
                            } else if (((lb8) it3.next()).a() == mb8.AddToShoppingCart) {
                                z = true;
                            }
                        }
                    }
                    Iterator<T> it4 = ww3Var.c().iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            next = it4.next();
                            x9Var = x9Var2;
                            it = it2;
                            if (((lb8) next).a() != mb8.Order) {
                                x9Var2 = x9Var;
                                it2 = it;
                            }
                        } else {
                            x9Var = x9Var2;
                            it = it2;
                            next = null;
                        }
                    }
                    lb8 lb8Var = (lb8) next;
                    String strB2 = lb8Var != null ? lb8Var.b() : null;
                    String strH = ww3Var.h();
                    if (strH == null || (g57Var2 = (g57) ht3.b(g57.class, strH)) == null || (h57VarB = g57Var2.b()) == null) {
                        h57VarB = h57.NO_RESTRICTION;
                    }
                    h57 h57Var = h57VarB;
                    String strH2 = ww3Var.h();
                    arrayList.add(new yw3(strE, strD, strI, strG, strF, strB, strJ, zA, z, strB2, h57Var, (strH2 == null || (g57Var = (g57) ht3.b(g57.class, strH2)) == null || (zfVarA = g57Var.a()) == null || (strA = zfVarA.a()) == null) ? "" : strA));
                    x9Var2 = x9Var;
                    it2 = it;
                }
                return arrayList;
            case 1:
                String str = (String) obj;
                c31 c31Var = (c31) obj2;
                if (c31Var.t() instanceof no5) {
                    c31Var.resumeWith(str != null ? str : "");
                }
                return j59.a;
            default:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                return ts5.b((ms5) obj2, a57Var);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t9(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }
}
