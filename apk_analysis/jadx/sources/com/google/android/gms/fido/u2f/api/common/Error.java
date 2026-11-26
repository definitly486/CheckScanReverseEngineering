package com.google.android.gms.fido.u2f.api.common;

import defpackage.c9;
import defpackage.kv2;
import defpackage.ti0;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public class Error {
    public static final String JSON_ERROR_CODE = "errorCode";
    public static final String JSON_ERROR_MESSAGE = "errorMessage";
    public final ErrorCode a;
    public final String b;

    public Error(ErrorCode errorCode) {
        this.a = errorCode;
        this.b = null;
    }

    public ErrorCode getErrorCode() {
        return this.a;
    }

    public String getErrorMessage() {
        return this.b;
    }

    public JSONObject toJsonObject() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("errorCode", this.a.getCode());
            String str = this.b;
            if (str != null) {
                jSONObject.put("errorMessage", str);
            }
            return jSONObject;
        } catch (JSONException e) {
            ti0.f(e);
            return null;
        }
    }

    public String toString() {
        ErrorCode errorCode = this.a;
        String str = this.b;
        if (str == null) {
            Locale locale = Locale.ENGLISH;
            return kv2.b(errorCode.getCode(), "{errorCode: ", "}");
        }
        Locale locale2 = Locale.ENGLISH;
        return c9.d(errorCode.getCode(), "{errorCode: ", ", errorMessage: ", str, "}");
    }

    public Error(ErrorCode errorCode, String str) {
        this.a = errorCode;
        this.b = str;
    }
}
