package yads;

import android.content.Context;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d16 {
    public final e4 a;
    public final q84 b;

    public d16(Context context, e4 e4Var, bf5 bf5Var) {
        bf5Var.getClass();
        q84 q84VarA = re.a(context, new lm6(((do6) bf5Var).a));
        this.a = e4Var;
        this.b = q84VarA;
    }

    public final void a(Map map, fe5 fe5Var) {
        e75 e75Var = e75.AD_LOADING_RESULT;
        if (fe5Var == null || !fe5Var.A0) {
            return;
        }
        e4 e4Var = this.a;
        defpackage.b36 b36Var = new defpackage.b36("ad_type", e4Var.a.b);
        String str = e4Var.c.a;
        if (str == null) {
            str = "";
        }
        this.b.a(new g75("tracking_event", new LinkedHashMap(defpackage.n05.g(defpackage.n05.e(b36Var, new defpackage.b36("ad_unit_id", str)), map)), (c) null));
    }
}
