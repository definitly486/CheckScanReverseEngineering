package yads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class se5 extends es {
    public final Context w;
    public final a85 x;
    public final Map y;

    public se5(Context context, String str, a85 a85Var, Map map, ue5 ue5Var, ue5 ue5Var2) {
        super(context, 0, str, ue5Var2, ue5Var);
        this.w = context;
        this.x = a85Var;
        this.y = map;
        this.n = true;
        this.m = true;
    }

    @Override // yads.es, yads.r75
    public final hi6 a(hi6 hi6Var) {
        o4 o4Var;
        int i = i4.d;
        en4 en4Var = hi6Var.b;
        Integer numValueOf = en4Var != null ? Integer.valueOf(en4Var.a) : null;
        if (numValueOf != null) {
            int iIntValue = numValueOf.intValue();
            o4Var = (500 > iIntValue || iIntValue > 599) ? o4.REQUEST_SUCCEEDED_RESPONSE_CODE_INVALID : o4.REQUEST_SUCCEEDED_SERVICE_UNAVAILABLE;
        } else if (hi6Var instanceof do4) {
            o4Var = o4.REQUEST_FAILED_NO_CONNECTION;
        } else if (hi6Var instanceof mx5) {
            o4Var = o4.REQUEST_FAILED_TIMEOUT;
        } else if (hi6Var instanceof ym) {
            o4Var = o4.REQUEST_FAILED_AUTH_FAILURE;
        } else if (hi6Var instanceof o00) {
            o4Var = o4.REQUEST_FAILED_CLIENT_ERROR;
        } else {
            o4Var = hi6Var instanceof rs4 ? o4.REQUEST_FAILED_PARSE_ERROR : o4.REQUEST_FAILED_UNKNOWN;
        }
        return new i4(o4Var, en4Var);
    }

    @Override // yads.r75
    public final Map d() {
        String str;
        HashMap map = new HashMap();
        qa3.a(this.w, map);
        oa3 oa3Var = oa3.AD_HEADER_WIDTH;
        map.put("app-id", this.w.getPackageName());
        Context context = this.w;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            str = null;
        }
        if (str != null) {
            oa3 oa3Var2 = oa3.AD_HEADER_WIDTH;
            map.put("app-version-name", str);
        }
        map.putAll(this.y);
        return map;
    }

    @Override // yads.r75
    public final z85 a(en4 en4Var) {
        o4 o4Var;
        if (200 == en4Var.a) {
            fe5 fe5Var = (fe5) this.x.a(en4Var);
            if (fe5Var != null) {
                Map map = en4Var.c;
                if (map == null) {
                    map = defpackage.mx2.b;
                }
                a(map);
                return new z85(fe5Var, pa3.a(en4Var));
            }
            o4Var = o4.REQUEST_SUCCEEDED_RESPONSE_PARAMS_INVALID;
        } else {
            o4Var = o4.REQUEST_SUCCEEDED_RESPONSE_CODE_INVALID;
        }
        return new z85(new i4(o4Var, en4Var));
    }
}
