package defpackage;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.common.MimeTypes;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.my.tracker.ads.AdFormat;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class qn9 {
    public final lia a;
    public int b = 1;

    public qn9(lia liaVar) {
        this.a = liaVar;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x0152  */
    /* JADX WARN: Code duplicated, block: B:77:0x0158  */
    /* JADX WARN: Code duplicated, block: B:79:0x0164  */
    public final m2a a(JSONObject jSONObject, float f, ks9 ks9Var) {
        int i;
        String str;
        boolean z;
        m2a snaVar;
        float fOptDouble;
        m2a m2aVar;
        float fOptDouble2;
        String strOptString = jSONObject.optString(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY);
        String strOptString2 = jSONObject.optString("url");
        boolean zOptBoolean = jSONObject.optBoolean("isImpression", false);
        m2a hq9Var = null;
        if (!y14.y(strOptString2)) {
            ks9Var.a("url").c(3007, strOptString2);
            return null;
        }
        if (TextUtils.isEmpty(strOptString)) {
            ks9Var.a(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY).b(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            return null;
        }
        strOptString.getClass();
        switch (strOptString) {
            case "orientation":
                if (jSONObject.has("view")) {
                    hq9Var = new hq9(strOptString2, jSONObject.optString("view"));
                } else {
                    ks9Var.a("view").f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                    hq9Var = null;
                }
                m2aVar = hq9Var;
                break;
            case "playheadViewabilityValue":
                int iOptInt = jSONObject.optInt("viewablePercent", -1);
                if (iOptInt >= 0 && iOptInt <= 100) {
                    String strI = y14.i(jSONObject, TypedValues.AttributesType.S_TARGET);
                    if (TextUtils.isEmpty(strI)) {
                        i = this.b;
                    } else if (MimeTypes.BASE_TYPE_VIDEO.equals(strI)) {
                        i = 2;
                    } else if (AdFormat.BANNER.equals(strI)) {
                        i = 1;
                    } else {
                        ks9Var.a(TypedValues.AttributesType.S_TARGET).g(3007, strI);
                    }
                    if (jSONObject.has("ovv")) {
                        str = strOptString2;
                        z = zOptBoolean;
                        ht9 ht9Var = new ht9(z, iOptInt, i, "ovvStat", str);
                        ht9Var.i = -1.0f;
                        ht9Var.j = -1.0f;
                        ht9Var.h = jSONObject.optBoolean("ovv", false);
                        if (jSONObject.has("pvalue")) {
                            float fOptDouble3 = (float) jSONObject.optDouble("pvalue", ht9Var.j);
                            if (fOptDouble3 < 0.0f || fOptDouble3 > 100.0f) {
                                if (jSONObject.has("value")) {
                                    fOptDouble = (float) jSONObject.optDouble("value", ht9Var.i);
                                    if (fOptDouble >= 0.0f) {
                                        ht9Var.i = fOptDouble;
                                        snaVar = ht9Var;
                                    }
                                }
                            } else if (f > 0.0f) {
                                ht9Var.i = (fOptDouble3 * f) / 100.0f;
                                snaVar = ht9Var;
                            } else {
                                ht9Var.j = fOptDouble3;
                                snaVar = ht9Var;
                            }
                        } else if (jSONObject.has("value")) {
                            fOptDouble = (float) jSONObject.optDouble("value", ht9Var.i);
                            if (fOptDouble >= 0.0f) {
                                ht9Var.i = fOptDouble;
                                snaVar = ht9Var;
                            }
                        }
                        hq9Var = snaVar;
                        m2aVar = hq9Var;
                    } else {
                        str = strOptString2;
                        z = zOptBoolean;
                    }
                    float fOptDouble4 = (float) jSONObject.optDouble(TypedValues.TransitionType.S_DURATION, -1.0d);
                    if (fOptDouble4 >= 0.0f) {
                        snaVar = new sna(str, fOptDouble4, iOptInt, jSONObject.optBoolean("mrc", true), i, z);
                        hq9Var = snaVar;
                        m2aVar = hq9Var;
                        break;
                    } else {
                        ks9 ks9VarA = ks9Var.a(TypedValues.TransitionType.S_DURATION);
                        if (jSONObject.has(TypedValues.TransitionType.S_DURATION)) {
                            ks9VarA.g(3007, Float.toString(fOptDouble4));
                        } else {
                            ks9VarA.f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
                        }
                    }
                    break;
                } else {
                    ks9Var.a("viewablePercent").g(3007, Integer.toString(iOptInt));
                }
                hq9Var = null;
                m2aVar = hq9Var;
                break;
            case "playheadReachedValue":
                k8a k8aVar = new k8a("playheadReachedValue", strOptString2, false);
                k8aVar.f = -1.0f;
                k8aVar.g = -1.0f;
                if (jSONObject.has("pvalue")) {
                    float fOptDouble5 = (float) jSONObject.optDouble("pvalue", k8aVar.g);
                    if (fOptDouble5 < 0.0f || fOptDouble5 > 100.0f) {
                        ks9Var.a("pvalue").c(3007, Float.toString(fOptDouble5));
                        if (jSONObject.has("value")) {
                            fOptDouble2 = (float) jSONObject.optDouble("value", k8aVar.f);
                            if (fOptDouble2 >= 0.0f) {
                                k8aVar.f = fOptDouble2;
                            } else {
                                ks9Var.a("value").c(3007, Float.toString(fOptDouble2));
                            }
                        }
                        ks9Var.b(3007);
                    } else if (f > 0.0f) {
                        k8aVar.f = (fOptDouble5 * f) / 100.0f;
                    } else {
                        k8aVar.g = fOptDouble5;
                    }
                    hq9Var = k8aVar;
                } else {
                    if (jSONObject.has("value")) {
                        fOptDouble2 = (float) jSONObject.optDouble("value", k8aVar.f);
                        if (fOptDouble2 >= 0.0f) {
                            k8aVar.f = fOptDouble2;
                            hq9Var = k8aVar;
                        } else {
                            ks9Var.a("value").c(3007, Float.toString(fOptDouble2));
                        }
                    }
                    ks9Var.b(3007);
                }
                m2aVar = hq9Var;
                break;
            default:
                m2aVar = new m2a(strOptString, strOptString2, zOptBoolean);
                break;
        }
        if (m2aVar != null) {
            m2aVar.e = jSONObject.optBoolean("needDecodeUrl", m2aVar.e);
            String strOptString3 = jSONObject.optString("adsLightType");
            if (!TextUtils.isEmpty(strOptString3)) {
                m2aVar.c = strOptString3;
            }
        }
        return m2aVar;
    }

    public final void b(n4a n4aVar, JSONObject jSONObject, float f) {
        c(n4aVar, jSONObject, f, ks9.d);
    }

    public final void c(n4a n4aVar, JSONObject jSONObject, float f, ks9 ks9Var) {
        int length;
        n4aVar.d(this.a.d, f);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("statistics");
        if (jSONArrayOptJSONArray != null && (length = jSONArrayOptJSONArray.length()) > 0) {
            ks9 ks9VarA = ks9Var.a("statistics");
            for (int i = 0; i < length; i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                ks9 ks9VarD = ks9VarA.d(i);
                if (jSONObjectOptJSONObject == null) {
                    ks9VarD.f(3007);
                } else {
                    m2a m2aVarA = a(jSONObjectOptJSONObject, f, ks9VarD);
                    if (m2aVarA != null) {
                        n4aVar.c(m2aVarA);
                    }
                }
            }
        }
    }
}
