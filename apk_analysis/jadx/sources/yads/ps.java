package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ps extends r06 {
    public final gj5 B;
    public final cj5 C;
    public final z76 D;

    public ps(Context context, e4 e4Var, q84 q84Var, String str, qi6 qi6Var, Object obj, h85 h85Var, l86 l86Var, gj5 gj5Var, cj5 cj5Var, z76 z76Var) {
        super(context, e4Var, 0, str, qi6Var, obj, h85Var, l86Var, q84Var);
        this.B = gj5Var;
        this.C = cj5Var;
        this.D = z76Var;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0099  */
    @Override // yads.r06
    public final z85 a(en4 en4Var, int i) {
        byte[] bArr;
        v76 v76Var;
        String strB;
        if (200 != i || (bArr = en4Var.b) == null || bArr.length == 0) {
            int i2 = i4.d;
            return new z85(new hi6(p4.a(null, h4.a(en4Var).c).b));
        }
        Map map = en4Var.c;
        Map map2 = defpackage.mx2.b;
        if (map == null) {
            map = map2;
        }
        this.C.a(map, true);
        z76 z76Var = this.D;
        ni6 ni6Var = z76Var.a;
        ni6Var.a.getClass();
        int i3 = en4Var.a;
        b95 b95Var = new b95(en4Var.b);
        Map map3 = en4Var.c;
        if (map3 == null) {
            map3 = map2;
        }
        String strA = ni6Var.b.a(new a95(i3, b95Var, map3));
        Map map4 = en4Var.c;
        if (map4 == null) {
            map4 = map2;
        }
        yo yoVar = new yo(map4);
        u83 u83Var = z76Var.c;
        Map map5 = en4Var.c;
        if (map5 != null) {
            map2 = map5;
        }
        u83Var.getClass();
        String strB2 = v83.b(map2, oa3.AD_ANALYTICS_PARAMETERS);
        Map mapA = strB2 != null ? qe.a(strB2) : null;
        ArrayList arrayListD = v83.d(map2, oa3.AD_EXPERIMENTS);
        c cVarA = e9.a(map2);
        if (strA == null || strA.length() == 0) {
            v76Var = null;
        } else {
            try {
                q76 q76VarA = z76Var.b.a(strA, yoVar);
                if (q76VarA != null) {
                    Map map6 = en4Var.c;
                    boolean z = false;
                    if (map6 != null && (strB = v83.b(map6, oa3.AD_RAW_VAST_ENABLED)) != null) {
                        z = Boolean.parseBoolean(strB);
                    }
                    v76Var = new v76(q76VarA, z ? strA : null, arrayListD, cVarA, mapA);
                } else {
                    v76Var = null;
                }
            } catch (Exception unused) {
            }
        }
        if (v76Var != null) {
            return !v76Var.a.b.isEmpty() ? new z85(v76Var, null) : new z85(new fn2());
        }
        return new z85(new qs4("Can't parse VAST response."));
    }

    @Override // yads.r06, yads.r75
    public final Map d() {
        defpackage.uz4 uz4Var = new defpackage.uz4();
        String strA = this.B.a();
        if (strA != null) {
        }
        uz4Var.putAll(super.d());
        return uz4Var.b();
    }
}
