package yads;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;
import defpackage.r57;
import defpackage.ta8;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class a4 {
    public final bf5 a;
    public final d9 b;
    public final e4 c;
    public final lf4 d;
    public final hv5 e;
    public final l65 f;
    public final qe4 g;
    public final h16 h;
    public final q5 i;
    public final sz j;
    public final pe4 k;
    public final oe4 l;

    public a4(Context context, bf5 bf5Var, d9 d9Var, e4 e4Var, lf4 lf4Var, hv5 hv5Var, l65 l65Var) {
        ea eaVar = new ea(context, e4Var, bf5Var);
        qe4 qe4Var = new qe4(context, e4Var, bf5Var, d9Var);
        h16 h16Var = new h16(eaVar, e4Var, d9Var);
        q5 q5Var = new q5(lf4Var);
        sz szVar = new sz();
        pe4 pe4Var = new pe4();
        this.a = bf5Var;
        this.b = d9Var;
        this.c = e4Var;
        this.d = lf4Var;
        this.e = hv5Var;
        this.f = l65Var;
        this.g = qe4Var;
        this.h = h16Var;
        this.i = q5Var;
        this.j = szVar;
        this.k = pe4Var;
        this.l = new oe4();
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(View view, ot3 ot3Var, d1 d1Var, nk4 nk4Var, ji4 ji4Var, defpackage.f02 f02Var) {
        z3 z3Var;
        String str;
        fv5 fv5VarA;
        zz zzVarA;
        ne4 ne4Var;
        fv5 fv5Var;
        by4 by4Var;
        fv5 fv5Var2;
        if (f02Var instanceof z3) {
            z3Var = (z3) f02Var;
            int i = z3Var.h;
            if ((i & Integer.MIN_VALUE) != 0) {
                z3Var.h = i - Integer.MIN_VALUE;
            } else {
                z3Var = new z3(this, f02Var);
            }
        } else {
            z3Var = new z3(this, f02Var);
        }
        Object objA = z3Var.f;
        Object obj = defpackage.a32.COROUTINE_SUSPENDED;
        int i2 = z3Var.h;
        if (i2 == 0) {
            r57.b(objA);
            ArrayList arrayList = ot3Var.a;
            z3Var.b = view;
            z3Var.c = ot3Var;
            z3Var.d = nk4Var;
            z3Var.e = ji4Var;
            z3Var.h = 1;
            objA = d1Var.a(view, arrayList, z3Var);
            if (objA == obj) {
                return obj;
            }
        } else {
            if (i2 != 1) {
                defpackage.ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ji4Var = z3Var.e;
            nk4Var = z3Var.d;
            ot3Var = z3Var.c;
            view = z3Var.b;
            r57.b(objA);
        }
        m83 m83Var = (m83) objA;
        Long l = this.f.a;
        LinkedHashMap linkedHashMapA = this.j.a(view, new Long(l != null ? SystemClock.elapsedRealtime() - l.longValue() : 0L));
        String str2 = ot3Var.d;
        n83 n83Var = m83Var.b;
        by4 by4Var2 = n83Var != null ? n83Var.a : null;
        List list = ot3Var.c;
        if (str2 != null) {
            nk4Var.getClass();
            if (str2.length() > 0) {
                str = str2;
            } else {
                str = null;
            }
        } else {
            str = null;
        }
        if (str != null) {
            lk4 lk4Var = nk4Var.a;
            String strA = lk4Var.b.a(str, defpackage.mx2.b);
            fv5VarA = strA.length() > 0 ? lk4Var.a.a(strA) : new dv5(d75.UNKNOWN);
        } else {
            fv5VarA = null;
        }
        nk4Var.b.a(list, pe4.a(by4Var2, fv5VarA), linkedHashMapA);
        pe4 pe4Var = ji4Var.b;
        boolean z = !pe4.a(fv5VarA, n83Var).isEmpty();
        d75 d75Var = fv5VarA != null ? fv5VarA.a : null;
        d75 d75Var2 = (n83Var == null || (fv5Var2 = n83Var.b) == null) ? null : fv5Var2.a;
        d75 d75Var3 = d75.DEFAULT;
        if ((n83Var != null ? n83Var.a : null) == null) {
            d75Var3 = null;
        }
        if (d75Var == null) {
            if (d75Var2 == null) {
                d75Var = d75Var3 == null ? d75.UNKNOWN : d75Var3;
            } else {
                d75Var = d75Var2;
            }
        }
        boolean z2 = fv5VarA instanceof ev5;
        ev5 ev5Var = z2 ? (ev5) fv5VarA : null;
        String str3 = ev5Var != null ? ev5Var.c : null;
        fv5 fv5Var3 = n83Var != null ? n83Var.b : null;
        ev5 ev5Var2 = fv5Var3 instanceof ev5 ? (ev5) fv5Var3 : null;
        String str4 = ev5Var2 != null ? ev5Var2.c : null;
        String str5 = (n83Var == null || (by4Var = n83Var.a) == null) ? null : by4Var.b;
        if (str3 == null) {
            str3 = str4 == null ? str5 : str4;
        }
        String strA2 = a56.a(str3);
        if (pe4.a(fv5VarA, n83Var).size() == 1) {
            if (fv5VarA == null) {
                fv5Var = n83Var != null ? n83Var.b : null;
            } else {
                fv5Var = fv5VarA;
            }
            zzVarA = pe4.a(n83Var != null ? n83Var.a : null, fv5Var);
        } else {
            zzVarA = wz.a;
        }
        Map mapE = defpackage.n05.e(new defpackage.b36("click_handled", Boolean.valueOf(z)), new defpackage.b36("click_type", d75Var.b), new defpackage.b36("click_url", strA2), new defpackage.b36("click_destination", a00.a(zzVarA)));
        l00 l00Var = ji4Var.a;
        e75 e75Var = e75.CLICK;
        g75 g75VarA = l00Var.a(e75Var, mapE);
        l00Var.d.a(g75VarA);
        l00Var.f.a(e75Var, g75VarA.b, c75.a, null);
        this.k.getClass();
        if (pe4.a(fv5VarA, n83Var).isEmpty()) {
            this.l.getClass();
            by4 by4Var3 = n83Var != null ? n83Var.a : null;
            boolean z3 = (n83Var != null ? n83Var.b : null) instanceof ev5;
            boolean z4 = by4Var3 != null;
            if (n83Var != null && !z4 && !z3 && !z2) {
                ne4Var = ne4.DEEPLINK_OPEN_FAILED;
            } else if (fv5VarA instanceof dv5) {
                ne4Var = ne4.URL_OPEN_FAILED;
            } else if (fv5VarA != null || n83Var != null) {
                ne4Var = (str2 == null || !ta8.M(str2) || z4 || z3) ? ne4.CLICK_HANDLING_FAILED : ne4.EMPTY_CLICK_URL;
            } else if (str2 == null) {
                ne4Var = ne4.NO_CLICK_HANDLER;
            } else {
                ne4Var = ta8.M(str2) ? ne4.EMPTY_CLICK_URL : ne4.CLICK_HANDLING_FAILED;
            }
            this.d.a.a(new me4(ne4Var));
        }
        return m83Var;
    }
}
