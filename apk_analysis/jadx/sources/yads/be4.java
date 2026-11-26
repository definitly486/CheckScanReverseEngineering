package yads;

import android.content.Context;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.tapjoy.TJAdUnitConstants;
import defpackage.u96;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class be4 extends ij4 implements pg4 {
    public final sd4 Q;
    public final lg4 R;
    public final b05 S;
    public final zh4 T;

    public be4(Context context, sd4 sd4Var, lg4 lg4Var, b05 b05Var, rt rtVar, we4 we4Var) {
        super(context, rtVar, we4Var);
        this.Q = sd4Var;
        this.R = lg4Var;
        this.S = b05Var;
        e4 e4Var = rtVar.a.c;
        f95 f95Var = sd4Var.a;
        zh4 zh4Var = new zh4(e4Var, f95Var.c, this.i, this.j, new il5(sd4Var));
        this.T = zh4Var;
        a(zh4Var);
    }

    @Override // yads.pg4
    public final g70 a(ih4 ih4Var) {
        try {
            this.T.f = gi4.CUSTOM;
            a(ih4Var.c, this.S, new rh4(ih4Var));
            return f70.a;
        } catch (yf4 e) {
            jn3.a("Ad binding failed: %s", e.b);
            return new e70(e.c, e);
        } catch (Throwable th) {
            String message = th.getMessage();
            if (message == null) {
                message = "Ad binding failed with unexpected exception";
            }
            jn3.a("Ad binding failed with unexpected error: %s", message);
            return new e70(null, th);
        }
    }

    @Override // yads.pg4
    public final String c() {
        return this.N;
    }

    @Override // yads.pg4
    public final s70 e() {
        return this.Q.j;
    }

    /* JADX WARN: Code duplicated, block: B:92:0x01a5  */
    @Override // yads.pg4
    public final f80 getAdAssets() {
        p80 p80Var;
        t80 t80Var;
        List list;
        lg4 lg4Var = this.R;
        zd4 zd4Var = lg4Var.f;
        sd4 sd4Var = lg4Var.a;
        zd4Var.getClass();
        List<ak> list2 = sd4Var.b;
        int iB = defpackage.m05.b(defpackage.kn1.q(list2, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (ak akVar : list2) {
            linkedHashMap.put(akVar.a, akVar.c);
        }
        Object obj = linkedHashMap.get("media");
        u80 u80Var = null;
        v14 v14Var = obj instanceof v14 ? (v14) obj : null;
        Object obj2 = linkedHashMap.get("favicon");
        rd3 rd3Var = obj2 instanceof rd3 ? (rd3) obj2 : null;
        Object obj3 = linkedHashMap.get("icon");
        rd3 rd3Var2 = obj3 instanceof rd3 ? (rd3) obj3 : null;
        Object obj4 = linkedHashMap.get("close_button");
        g10 g10Var = obj4 instanceof g10 ? (g10) obj4 : null;
        Object obj5 = linkedHashMap.get("age");
        String str = obj5 instanceof String ? (String) obj5 : null;
        Object obj6 = linkedHashMap.get(TtmlNode.TAG_BODY);
        String str2 = obj6 instanceof String ? (String) obj6 : null;
        Object obj7 = linkedHashMap.get("call_to_action");
        String str3 = obj7 instanceof String ? (String) obj7 : null;
        Object obj8 = linkedHashMap.get(DynamicLink.Builder.KEY_DOMAIN);
        String str4 = obj8 instanceof String ? (String) obj8 : null;
        Object obj9 = linkedHashMap.get(FirebaseAnalytics.Param.PRICE);
        String str5 = obj9 instanceof String ? (String) obj9 : null;
        Object obj10 = linkedHashMap.get("rating");
        String str6 = obj10 instanceof String ? (String) obj10 : null;
        Object obj11 = linkedHashMap.get("review_count");
        String str7 = obj11 instanceof String ? (String) obj11 : null;
        Object obj12 = linkedHashMap.get("sponsored");
        String str8 = obj12 instanceof String ? (String) obj12 : null;
        Object obj13 = linkedHashMap.get(TJAdUnitConstants.String.TITLE);
        String str9 = obj13 instanceof String ? (String) obj13 : null;
        Object obj14 = linkedHashMap.get("warning");
        r80 r80Var = obj14 instanceof r80 ? (r80) obj14 : obj14 instanceof String ? new r80((String) obj14) : null;
        boolean z = linkedHashMap.get("feedback") != null;
        i80 i80VarA = zd4Var.b.a((v14Var == null || (list = v14Var.c) == null) ? null : (rd3) defpackage.qn1.V(list), zd4Var.a);
        i80 i80VarA2 = zd4Var.b.a(rd3Var, zd4Var.a);
        i80 i80VarA3 = zd4Var.b.a(rd3Var2, zd4Var.a);
        zd4Var.c.getClass();
        if (v14Var != null) {
            r96 r96Var = v14Var.b;
            List list3 = v14Var.c;
            by3 by3Var = v14Var.a;
            if (r96Var != null) {
                ol4 ol4Var = (ol4) ((ja6) defpackage.qn1.T(r96Var.a)).d;
                int i = ol4Var.c;
                p80Var = new p80(i != 0 ? ol4Var.b / i : 1.7777778f, true);
            } else if (list3 != null && list3.size() > 1) {
                p80Var = new p80((float) tc4.a(list3), false);
            } else if (by3Var != null) {
                p80Var = new p80(by3Var.b, by3Var.c);
            } else {
                p80Var = null;
            }
        } else {
            p80Var = null;
        }
        zd4Var.e.getClass();
        if (g10Var != null) {
            int iOrdinal = g10Var.a.ordinal();
            if (iOrdinal == 0) {
                t80Var = t80.TEXT;
            } else {
                if (iOrdinal != 1) {
                    defpackage.me0.e();
                    return null;
                }
                t80Var = t80.IMAGE;
            }
            u80Var = new u80(t80Var, g10Var.b);
        }
        zd4Var.d.getClass();
        return new f80(p80Var, i80VarA2, i80VarA3, i80VarA, u80Var, str, str2, str3, str4, str5, bi4.a(str6), str7, str8, str9, r80Var, z);
    }

    @Override // yads.pg4
    public final f95 getAdType() {
        return this.R.a.a;
    }

    @Override // yads.pg4
    public final String getInfo() {
        return this.R.a.d;
    }

    @Override // yads.ij4, yads.pg4
    public final void loadImages() {
        lg4 lg4Var = this.R;
        List listH = u96.h(lg4Var.a);
        yd3 yd3Var = lg4Var.e;
        yd3Var.getClass();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listH.iterator();
        while (it.hasNext()) {
            defpackage.nn1.s(yd3Var.a(((sd4) it.next()).b), linkedHashSet);
        }
        lg4Var.d.a(linkedHashSet, new kg4(lg4Var));
    }

    @Override // yads.pg4
    public final void a(ih4 ih4Var, pz pzVar) {
        a(ih4Var.c, this.S, new rh4(ih4Var), pzVar);
    }

    @Override // yads.pg4
    public final String a() {
        return this.R.a.e;
    }
}
