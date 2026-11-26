package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class lz0 implements yy0 {
    public final ey1 a;

    public lz0(ey1 ey1Var) {
        this.a = ey1Var;
    }

    @Override // yads.yy0
    public final boolean a(String str, ry0 ry0Var, vq0 vq0Var, fs2 fs2Var) {
        z66 z66VarB;
        ny0 ny0Var = ry0Var instanceof ny0 ? (ny0) ry0Var : null;
        if (ny0Var == null) {
            return false;
        }
        yw0 yw0Var = ny0Var.a;
        cn1 cn1VarA = new kz0((String) yw0Var.a.a(fs2Var)).a(vq0Var);
        if (cn1VarA == null) {
            return false;
        }
        List<uw0> list = yw0Var.d.a;
        if (list != null) {
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            for (uw0 uw0Var : list) {
                arrayList.add(new fy1());
            }
        }
        ((ww0) yw0Var.d.b.a(fs2Var)).toString();
        List listS = cn1VarA.a.a().s();
        if (listS != null && !listS.isEmpty() && (z66VarB = w56.b(cn1VarA.b)) != null) {
            JSONObject jSONObject = new JSONObject();
            Iterator it = listS.iterator();
            while (it.hasNext()) {
                String strA = xb5.a((uf2) it.next());
                Object obj = z66VarB.get(strA);
                if (obj == null || jSONObject.put(strA, obj) == null) {
                    o01.a(vq0Var, new b94(strA));
                    j59 j59Var = j59.a;
                }
            }
            jSONObject.toString();
        }
        List list2 = yw0Var.c;
        List list3 = yw0Var.b;
        if ((list2 == null || list2.isEmpty()) && list3 != null) {
            list3.isEmpty();
        }
        vq0Var.a(this.a.a());
        return true;
    }
}
