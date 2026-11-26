package yads;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ls2 {
    public static final boolean a(as2 as2Var, as2 as2Var2) {
        if (as2Var == null && as2Var2 == null) {
            return true;
        }
        if (as2Var == null || !(as2Var instanceof xr2) || as2Var2 == null || !(as2Var2 instanceof xr2)) {
            return false;
        }
        return ((as2Var.a() instanceof JSONObject) || (as2Var.a() instanceof JSONArray)) ? defpackage.aa4.e(as2Var.a().toString(), as2Var2.a().toString()) : defpackage.aa4.e(as2Var.a(), as2Var2.a());
    }

    public static final boolean a(as2 as2Var) {
        return as2Var == null || (as2Var instanceof xr2);
    }

    public static final boolean a(ds2 ds2Var, ds2 ds2Var2) {
        if (ds2Var == null && ds2Var2 == null) {
            return true;
        }
        return ds2Var != null && (ds2Var instanceof y50) && ds2Var2 != null && (ds2Var2 instanceof y50) && defpackage.aa4.e(((y50) ds2Var).a, ((y50) ds2Var2).a);
    }
}
