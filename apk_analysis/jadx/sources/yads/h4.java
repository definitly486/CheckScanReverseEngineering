package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h4 {
    public static i4 a(en4 en4Var) {
        o4 o4Var;
        int i = en4Var != null ? en4Var.a : -1;
        if (204 == i) {
            o4Var = o4.REQUEST_SUCCEEDED_RESPONSE_NO_CONTENT;
        } else {
            Map map = en4Var != null ? en4Var.c : null;
            Integer numValueOf = en4Var != null ? Integer.valueOf(en4Var.a) : null;
            if ((numValueOf == null || 400 != numValueOf.intValue() || map == null) ? false : v83.a(map, oa3.AD_SHOULD_INVALIDATE_STARTUP)) {
                o4Var = o4.REQUEST_SUCCEEDED_INVALID_SDK_CONFIGURATION;
            } else if (403 == i) {
                o4Var = o4.REQUEST_SUCCEEDED_NO_SUCH_AD_UNIT_ID_ERROR;
            } else if (404 == i) {
                o4Var = o4.REQUEST_SUCCEEDED_RESPONSE_NOT_FOUND;
            } else if (500 > i || i > 599) {
                o4Var = -1 == i ? o4.REQUEST_FAILED_NO_CONNECTION : o4.REQUEST_SUCCEEDED_RESPONSE_CODE_INVALID;
            } else {
                o4Var = o4.REQUEST_SUCCEEDED_SERVICE_UNAVAILABLE;
            }
        }
        return new i4(o4Var, en4Var);
    }
}
