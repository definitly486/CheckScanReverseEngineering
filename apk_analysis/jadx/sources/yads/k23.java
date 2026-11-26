package yads;

import defpackage.r57;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k23 {
    public final kg0 a;

    public k23(kg0 kg0Var) {
        this.a = kg0Var;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object a(String str, defpackage.f02 f02Var) throws Throwable {
        j23 j23Var;
        String str2;
        Object next;
        be0 be0Var;
        Object next2;
        Object next3;
        String str3;
        if (f02Var instanceof j23) {
            j23Var = (j23) f02Var;
            int i = j23Var.e;
            if ((i & Integer.MIN_VALUE) != 0) {
                j23Var.e = i - Integer.MIN_VALUE;
            } else {
                j23Var = new j23(this, f02Var);
            }
        } else {
            j23Var = new j23(this, f02Var);
        }
        Object obj = j23Var.c;
        defpackage.a32 a32Var = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = j23Var.e;
        if (i2 == 0) {
            r57.b(obj);
            kg0 kg0Var = this.a;
            j23Var.b = str;
            j23Var.e = 1;
            Object objD = defpackage.av0.d(kg0Var.d, new jg0(kg0Var, null), j23Var);
            if (objD == a32Var) {
                return a32Var;
            }
            obj = objD;
            str2 = str;
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str2 = j23Var.b;
            r57.b(obj);
        }
        ef0 ef0Var = (ef0) obj;
        Iterator it = ef0Var.g.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!defpackage.aa4.e(((od0) next).c, str2));
        od0 od0Var = (od0) next;
        if (od0Var == null) {
            return null;
        }
        ArrayList arrayList = ef0Var.d.a;
        wd0 wd0Var = od0Var.d;
        if (wd0Var == null) {
            be0Var = new be0(defpackage.kx2.b);
        } else {
            List<rd0> list = wd0Var.b;
            ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(list, 10));
            for (rd0 rd0Var : list) {
                Iterator it2 = arrayList.iterator();
                do {
                    if (!it2.hasNext()) {
                        next3 = null;
                        break;
                    }
                    next3 = it2.next();
                } while (!defpackage.aa4.e(((le0) next3).a, rd0Var.b));
                le0 le0Var = (le0) next3;
                String str4 = (le0Var == null || (str3 = le0Var.b) == null) ? "" : str3;
                List<ze0> list2 = rd0Var.c;
                ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(list2, 10));
                for (ze0 ze0Var : list2) {
                    arrayList3.add(new xf0(ze0Var.a, ze0Var.b));
                }
                arrayList2.add(new ae0(str4, rd0Var.b, arrayList3, rd0Var.d, rd0Var.e, xd0.a));
            }
            List<ee0> list3 = wd0Var.a;
            ArrayList arrayList4 = new ArrayList(defpackage.kn1.q(list3, 10));
            for (ee0 ee0Var : list3) {
                Iterator it3 = arrayList.iterator();
                do {
                    if (!it3.hasNext()) {
                        next2 = null;
                        break;
                    }
                    next2 = it3.next();
                } while (!defpackage.aa4.e(((le0) next2).a, ee0Var.b));
                le0 le0Var2 = (le0) next2;
                String str5 = le0Var2 != null ? le0Var2.b : null;
                String str6 = str5 == null ? "" : str5;
                List<fi0> list4 = ee0Var.c;
                ArrayList arrayList5 = new ArrayList(defpackage.kn1.q(list4, 10));
                for (fi0 fi0Var : list4) {
                    arrayList5.add(new xf0(fi0Var.a, fi0Var.b));
                }
                arrayList4.add(new ae0(str6, ee0Var.b, arrayList5, null, ee0Var.d, new yd0(ee0Var.e, ee0Var.f)));
            }
            be0Var = new be0(defpackage.qn1.h0(arrayList4, arrayList2));
        }
        return new td0(od0Var.a, od0Var.b, str2, be0Var);
    }
}
