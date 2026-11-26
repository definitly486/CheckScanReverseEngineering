package yads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class bn3 extends es {
    public final Context w;
    public final a85 x;
    public final Map y;

    public bn3(Context context, String str, a85 a85Var, Map map, ch3 ch3Var) {
        super(context, 0, str, ch3Var, null);
        this.w = context;
        this.x = a85Var;
        this.y = map;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        if (200 != en4Var.a) {
            return new z85(new i4(o4.REQUEST_SUCCEEDED_RESPONSE_CODE_INVALID, en4Var));
        }
        dg0 dg0Var = (dg0) this.x.a(en4Var);
        return dg0Var != null ? new z85(dg0Var, pa3.a(en4Var)) : new z85(new i4(o4.REQUEST_SUCCEEDED_RESPONSE_PARAMS_INVALID, en4Var));
    }

    @Override // yads.r75
    public final Map d() {
        HashMap map = new HashMap();
        qa3.a(this.w, map);
        map.putAll(this.y);
        return map;
    }

    @Override // yads.es, yads.r75
    public final hi6 a(hi6 hi6Var) {
        return hi6Var;
    }
}
