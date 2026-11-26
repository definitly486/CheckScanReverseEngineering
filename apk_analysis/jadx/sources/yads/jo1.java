package yads;

import com.monetization.ads.core.divkit.DivKitFeature;
import java.util.ArrayList;
import java.util.Set;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class jo1 {
    public final q84 a;
    public final eb1 b;
    public final rb1 c;
    public final go1 d;
    public final vo e;

    public jo1(q84 q84Var) {
        eb1 eb1Var = new eb1(q84Var);
        rb1 rb1Var = new rb1();
        go1 go1Var = new go1();
        vo voVar = new vo();
        this.a = q84Var;
        this.b = eb1Var;
        this.c = rb1Var;
        this.d = go1Var;
        this.e = voVar;
    }

    public final fo1 a(mn0 mn0Var, boolean z) {
        if (DivKitFeature.isEnabled()) {
            tn0[] tn0VarArr = tn0.b;
            if ("divkit".equals(mn0Var.a)) {
                try {
                    String str = mn0Var.b;
                    String strA = mn0Var.c;
                    if (z) {
                        this.e.getClass();
                        strA = vo.a(strA);
                    }
                    JSONObject jSONObject = new JSONObject(strA);
                    JSONObject jSONObject2 = jSONObject.getJSONObject("card");
                    JSONObject jSONObject3 = jSONObject.has("templates") ? jSONObject.getJSONObject("templates") : null;
                    ArrayList arrayList = mn0Var.d;
                    db1 db1VarA = this.b.a(jSONObject2, jSONObject3);
                    this.c.getClass();
                    qb1 qb1Var = new qb1(UUID.randomUUID().toString());
                    ArrayList arrayListA = this.d.a(jSONObject2);
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayListA) {
                        if (!go1.a.contains(((sn1) obj).b)) {
                            arrayList2.add(obj);
                        }
                    }
                    Set setY0 = defpackage.qn1.y0(arrayList2);
                    if (db1VarA != null) {
                        return new fo1(str, jSONObject2, jSONObject3, arrayList, db1VarA, qb1Var, setY0, new nn0(mn0Var.e));
                    }
                } catch (Throwable th) {
                    this.a.reportError("Failed to parse DivKit design", th);
                }
            }
        }
        return null;
    }
}
