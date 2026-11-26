package yads;

import defpackage.j59;
import defpackage.k57;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class gz2 {
    public static fz2 a(JSONObject jSONObject) {
        Object aVar;
        defpackage.ad4 ad4VarA = defpackage.bd4.a(new defpackage.xr2(3));
        try {
            aVar = (fz2) ad4VarA.a(fz2.Companion.serializer(), jSONObject.toString());
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        return (fz2) aVar;
    }

    public static final j59 a(defpackage.dc4 dc4Var) {
        dc4Var.b = true;
        return j59.a;
    }
}
