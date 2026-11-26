package com.my.target;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import defpackage.e2a;
import defpackage.h14;
import defpackage.i1a;
import defpackage.jh;
import defpackage.ks9;
import defpackage.y14;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 {
    /* JADX WARN: Code duplicated, block: B:122:0x01c0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x01bd  */
    /* JADX WARN: Multi-variable type inference failed */
    public static q a(JSONObject jSONObject, ks9 ks9Var) {
        int length;
        q qVar;
        ArrayList arrayList;
        String str;
        String str2;
        String str3;
        int i;
        int i2;
        ks9 ks9Var2;
        String str4;
        String str5;
        String str6;
        q.a aVar;
        String string;
        i1a i1aVar;
        e2a e2aVar;
        String str7 = "iconLink";
        String strOptString = jSONObject.optString("iconLink");
        if (TextUtils.isEmpty(strOptString) || !y14.y(strOptString)) {
            ks9 ks9VarA = ks9Var.a("iconLink");
            if (TextUtils.isEmpty(strOptString)) {
                ks9VarA.b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                return null;
            }
            ks9VarA.c(3007, strOptString);
            return null;
        }
        String strOptString2 = jSONObject.optString("clickLink");
        if (TextUtils.isEmpty(strOptString2)) {
            ks9Var.a("clickLink").b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
        } else if (!y14.y(strOptString2)) {
            ks9Var.a("clickLink").c(3007, strOptString2);
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("options");
        String str8 = "complain";
        if (jSONArrayOptJSONArray == null || (length = jSONArrayOptJSONArray.length()) == 0) {
            str = "iconLink";
            str2 = strOptString2;
            str3 = "complain";
            arrayList = null;
            qVar = null;
        } else {
            String strOptString3 = jSONObject.optString("closeUrl");
            if (strOptString3.isEmpty()) {
                strOptString3 = null;
            } else if (!y14.y(strOptString3)) {
                ks9Var.a("closeUrl").c(3007, strOptString3);
                strOptString3 = null;
            }
            ks9 ks9VarA2 = ks9Var.a("options");
            qVar = null;
            arrayList = new ArrayList();
            int i3 = 0;
            while (i3 < length) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i3);
                JSONArray jSONArray = jSONArrayOptJSONArray;
                ks9 ks9VarD = ks9VarA2.d(i3);
                if (jSONObjectOptJSONObject == null) {
                    i = i3;
                    ks9VarD.f(3007);
                    str4 = str7;
                    str5 = strOptString2;
                    str6 = str8;
                    i2 = length;
                    ks9Var2 = ks9VarA2;
                } else {
                    i = i3;
                    i2 = length;
                    ks9 ks9VarA3 = ks9VarD.a(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                    if (jSONObjectOptJSONObject.has(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY)) {
                        ks9Var2 = ks9VarA2;
                        String strOptString4 = jSONObjectOptJSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
                        str4 = str7;
                        str5 = strOptString2;
                        if (strOptString4.equals("default") || strOptString4.equals("hide") || strOptString4.equals(str8)) {
                            str6 = str8;
                            String strOptString5 = jSONObjectOptJSONObject.optString("name");
                            if (TextUtils.isEmpty(strOptString5)) {
                                ks9VarD.a("name").b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                            } else {
                                boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("shouldCloseAd", true);
                                String strOptString6 = jSONObjectOptJSONObject.optString("clickLink");
                                String strB = b(jSONObjectOptJSONObject, strOptString3, zOptBoolean, ks9VarD);
                                if (!strOptString6.isEmpty() && !y14.y(strOptString6)) {
                                    ks9VarD.a("clickLink").c(3007, strOptString6);
                                    if (strB == null) {
                                    }
                                }
                                aVar = new q.a(strOptString5, strOptString4, strB, strOptString6, null, !jSONObjectOptJSONObject.has("alias") ? null : jSONObjectOptJSONObject.optString("alias"), zOptBoolean);
                            }
                        } else {
                            str6 = str8;
                            if (strOptString4.equals("copy")) {
                                String strOptString7 = jSONObjectOptJSONObject.optString("name");
                                if (TextUtils.isEmpty(strOptString7)) {
                                    ks9VarD.a("name").b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                                } else {
                                    boolean zOptBoolean2 = jSONObjectOptJSONObject.optBoolean("shouldCloseAd", true);
                                    String strB2 = b(jSONObjectOptJSONObject, strOptString3, zOptBoolean2, ks9VarD);
                                    String strOptString8 = !jSONObjectOptJSONObject.has("copyText") ? null : jSONObjectOptJSONObject.optString("copyText");
                                    if (TextUtils.isEmpty(strOptString8)) {
                                        ks9VarD.a("copyText").b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                                    } else {
                                        aVar = new q.a(strOptString7, "copy", strB2, null, strOptString8, !jSONObjectOptJSONObject.has("alias") ? null : jSONObjectOptJSONObject.optString("alias"), zOptBoolean2);
                                    }
                                }
                            } else {
                                ks9VarA3.c(3007, strOptString4);
                            }
                        }
                        if (aVar == null) {
                            arrayList.add(aVar);
                        }
                        i3 = i + 1;
                        jSONArrayOptJSONArray = jSONArray;
                        length = i2;
                        ks9VarA2 = ks9Var2;
                        str7 = str4;
                        strOptString2 = str5;
                        str8 = str6;
                    } else {
                        ks9Var2 = ks9VarA2;
                        ks9VarA3.b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                        str4 = str7;
                        str5 = strOptString2;
                        str6 = str8;
                    }
                }
                aVar = null;
                if (aVar == null) {
                    arrayList.add(aVar);
                }
                i3 = i + 1;
                jSONArrayOptJSONArray = jSONArray;
                length = i2;
                ks9VarA2 = ks9Var2;
                str7 = str4;
                strOptString2 = str5;
                str8 = str6;
            }
            str = str7;
            str2 = strOptString2;
            str3 = str8;
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
        }
        if (arrayList == null && (TextUtils.isEmpty(str2) || !y14.y(str2))) {
            if (!jSONObject.has("options")) {
                ks9Var.a("options").b(3007);
            }
            return qVar;
        }
        try {
            string = jSONObject.getString("aboutCompany");
        } catch (JSONException unused) {
            string = qVar;
        }
        q qVar2 = new q(new h14(strOptString), str2);
        qVar2.c = arrayList;
        if (qVar2.d != null) {
            qVar2.d = q.a(arrayList);
        }
        qVar2.e = string;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("hide");
        if (jSONObjectOptJSONObject2 == null || jSONObjectOptJSONObject2.length() == 0) {
            i1aVar = qVar;
        } else {
            i1a i1aVar2 = new i1a();
            i1aVar2.c = "";
            i1aVar2.d = "";
            i1aVar2.e = "";
            i1aVar2.b = "";
            jSONObjectOptJSONObject2.optString(str);
            jSONObjectOptJSONObject2.optString("fromIconLink");
            i1aVar2.b = jSONObjectOptJSONObject2.optString("fromTitle");
            i1aVar2.c = jSONObjectOptJSONObject2.optString("fromDescription");
            i1aVar2.d = jSONObjectOptJSONObject2.optString("fromOptionsTitle");
            i1aVar2.e = jSONObjectOptJSONObject2.optString("fromActionText");
            i1aVar = i1aVar2;
        }
        qVar2.f = i1aVar;
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(str3);
        if (jSONObjectOptJSONObject3 == null || jSONObjectOptJSONObject3.length() == 0) {
            e2aVar = qVar;
        } else {
            e2a e2aVar2 = new e2a();
            e2aVar2.a = "";
            e2aVar2.b = "";
            e2aVar2.c = "";
            e2aVar2.d = "";
            e2aVar2.e = "";
            e2aVar2.f = "";
            e2aVar2.a = jSONObjectOptJSONObject3.optString("fromTitle");
            e2aVar2.b = jSONObjectOptJSONObject3.optString("fromOptionsTitle");
            e2aVar2.c = jSONObjectOptJSONObject3.optString("fromActionText");
            jSONObjectOptJSONObject3.optString("resultIconLink");
            e2aVar2.d = jSONObjectOptJSONObject3.optString("resultTitle");
            e2aVar2.e = jSONObjectOptJSONObject3.optString("resultDescription");
            e2aVar2.f = jSONObjectOptJSONObject3.optString("resultActionText");
            e2aVar = e2aVar2;
        }
        qVar2.g = e2aVar;
        return qVar2;
    }

    public static String b(JSONObject jSONObject, String str, boolean z, ks9 ks9Var) {
        String strOptString = jSONObject.optString("url");
        if (y14.y(strOptString)) {
            return strOptString;
        }
        if (!strOptString.isEmpty()) {
            ks9Var.a("url").c(3007, strOptString);
        }
        if (str == null || !z) {
            return null;
        }
        String strConcat = str.concat("&reason=");
        boolean zIsNull = jSONObject.isNull(TtmlNode.ATTR_ID);
        int iOptInt = jSONObject.optInt(TtmlNode.ATTR_ID);
        if (!zIsNull) {
            if (iOptInt >= 1) {
                return jh.b(iOptInt, strConcat);
            }
            ks9Var.a(TtmlNode.ATTR_ID).b(3007);
        }
        return strConcat;
    }
}
