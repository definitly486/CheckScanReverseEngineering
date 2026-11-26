package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class w9 extends gh4 implements nl3<rx5, qx5> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v0, types: [kx2] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.util.ArrayList] */
    @Override // defpackage.nl3
    public final qx5 invoke(rx5 rx5Var) {
        nx5 nx5Var;
        ?? r10;
        h57 h57VarB;
        sy8 sy8Var;
        ew3 ew3Var;
        fw3 fw3VarB;
        Boolean boolC;
        sx5.a aVarA;
        g57 g57Var;
        rx5 rx5Var2 = rx5Var;
        rx5Var2.getClass();
        String strE = rx5Var2.e();
        jx5 jx5VarA = rx5Var2.a();
        q00 q00Var = jx5VarA != null ? new q00(jx5VarA.b(), jx5VarA.c(), jx5VarA.a()) : null;
        String strN = rx5Var2.n();
        if (strN == null) {
            strN = "";
        }
        String strL = rx5Var2.l();
        String str = "";
        boolean zC = rx5Var2.c();
        String strI = rx5Var2.i();
        if (strI == null) {
            strI = str;
        }
        String strD = rx5Var2.d();
        ox5 ox5VarB = rx5Var2.b();
        if (ox5VarB != null) {
            String strA = ox5VarB.a();
            String strB = ox5VarB.b();
            if (strB == null) {
                strB = str;
            }
            nx5Var = new nx5(strA, strB);
        } else {
            nx5Var = null;
        }
        List<vx5> listM = rx5Var2.m();
        ?? arrayList = kx2.b;
        if (listM != null && listM.size() - 1 > 3) {
            List listA = or4.a(listM, 3, listM.size());
            ArrayList arrayList2 = new ArrayList(kn1.q(listA, 10));
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                arrayList2.add(x9.a((vx5) it.next()));
            }
            r10 = arrayList2;
        } else {
            r10 = arrayList;
        }
        List<vx5> listM2 = rx5Var2.m();
        if (listM2 != null) {
            if (listM2.size() - 1 > 3) {
                List listA2 = or4.a(listM2, 0, 3);
                arrayList = new ArrayList(kn1.q(listA2, 10));
                Iterator it2 = listA2.iterator();
                while (it2.hasNext()) {
                    arrayList.add(x9.a((vx5) it2.next()));
                }
            } else {
                List<vx5> list = listM2;
                arrayList = new ArrayList(kn1.q(list, 10));
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    arrayList.add(x9.a((vx5) it3.next()));
                }
            }
        }
        String strK = rx5Var2.k();
        if (strK == null || (g57Var = (g57) ht3.b(g57.class, strK)) == null || (h57VarB = g57Var.b()) == null) {
            h57VarB = h57.NO_RESTRICTION;
        }
        h57 h57Var = h57VarB;
        ry8 ry8VarO = rx5Var2.o();
        if (!(ry8VarO.a() && ry8VarO.c() && !ry8VarO.b()) && (!ry8VarO.a() || ry8VarO.c() || ry8VarO.b())) {
            sy8Var = ((!ry8VarO.b() || ry8VarO.c() || ry8VarO.a()) && !(ry8VarO.b() && ry8VarO.c() && !ry8VarO.a()) && (!ry8VarO.c() || ry8VarO.a())) ? sy8.App : sy8.Desktop;
        } else {
            sy8Var = sy8.Mobile;
        }
        sx5.c cVarH = rx5Var2.h();
        String strC = cVarH != null ? cVarH.c() : null;
        sx5.c cVarH2 = rx5Var2.h();
        String strD2 = cVarH2 != null ? cVarH2.d() : null;
        sx5.c cVarH3 = rx5Var2.h();
        dn1.c cVar = new dn1.c(strC, strD2, (cVarH3 == null || (aVarA = cVarH3.a()) == null) ? null : aVarA.a());
        c06 c06VarF = rx5Var2.f();
        boolean zBooleanValue = (c06VarF == null || (boolC = c06VarF.c()) == null) ? false : boolC.booleanValue();
        c06 c06VarF2 = rx5Var2.f();
        String strB2 = c06VarF2 != null ? c06VarF2.b() : null;
        String str2 = strB2 == null ? str : strB2;
        c06 c06VarF3 = rx5Var2.f();
        String strE2 = c06VarF3 != null ? c06VarF3.e() : null;
        String str3 = strE2 == null ? str : strE2;
        c06 c06VarF4 = rx5Var2.f();
        String strA2 = c06VarF4 != null ? c06VarF4.a() : null;
        String str4 = strA2 == null ? str : strA2;
        c06 c06VarF5 = rx5Var2.f();
        String strD3 = c06VarF5 != null ? c06VarF5.d() : null;
        b06 b06Var = new b06(strD3 == null ? str : strD3, zBooleanValue, str2, str3, str4);
        ao6 ao6VarJ = rx5Var2.j();
        String strA3 = ao6VarJ != null ? ao6VarJ.a() : null;
        if (strA3 == null) {
            strA3 = str;
        }
        ao6 ao6VarJ2 = rx5Var2.j();
        String strB3 = ao6VarJ2 != null ? ao6VarJ2.b() : null;
        String str5 = strB3 == null ? str : strB3;
        ao6 ao6VarJ3 = rx5Var2.j();
        String strC2 = ao6VarJ3 != null ? ao6VarJ3.c() : null;
        sy8 sy8Var2 = sy8Var;
        zn6 zn6Var = new zn6(strA3, str5, strC2 == null ? str : strC2);
        xh6 xh6VarG = rx5Var2.g();
        wh6 wh6Var = xh6VarG != null ? new wh6(xh6VarG.a()) : null;
        sx5.c cVarH4 = rx5Var2.h();
        if (cVarH4 == null || (fw3VarB = cVarH4.b()) == null) {
            ew3Var = null;
        } else {
            String strA4 = fw3VarB.a();
            str = strA4 != null ? strA4 : "";
            me6 me6VarB = fw3VarB.b();
            ew3Var = new ew3(str, me6VarB != null ? new dn1.b(me6VarB.c(), me6VarB.b(), me6VarB.d(), me6VarB.e(), me6VarB.a()) : null);
        }
        return new qx5(strE, q00Var, strN, zC, strI, strL, strD, nx5Var, r10, arrayList, h57Var, sy8Var2, cVar, b06Var, zn6Var, wh6Var, ew3Var);
    }
}
