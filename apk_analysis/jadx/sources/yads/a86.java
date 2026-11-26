package yads;

import defpackage.kx6;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class a86 {
    public final q84 a;
    public final zl6 b;
    public final sn0 c;
    public final jo1 d;

    public a86(q84 q84Var) {
        zl6 zl6Var = new zl6();
        sn0 sn0Var = new sn0();
        jo1 jo1Var = new jo1(q84Var);
        this.a = q84Var;
        this.b = zl6Var;
        this.c = sn0Var;
        this.d = jo1Var;
    }

    public final List a(String str, boolean z) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            defpackage.y74 y74VarN = kx6.n(0, jSONArray.length());
            ArrayList arrayList = new ArrayList();
            defpackage.x74 it = y74VarN.iterator();
            while (it.d) {
                mn0 mn0VarA = this.c.a(jSONArray.getJSONObject(it.nextInt()));
                if (mn0VarA != null) {
                    arrayList.add(mn0VarA);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                fo1 fo1VarA = this.d.a((mn0) it2.next(), z);
                if (fo1VarA != null) {
                    arrayList2.add(fo1VarA);
                }
            }
            arrayList2.size();
            return arrayList2;
        } catch (Exception e) {
            this.a.reportError("Failed to parse DivKit designs JSON array", e);
            return defpackage.kx2.b;
        }
    }
}
