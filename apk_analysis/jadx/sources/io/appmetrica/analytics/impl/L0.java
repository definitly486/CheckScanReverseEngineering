package io.appmetrica.analytics.impl;

import android.util.Base64;
import com.google.firebase.dynamiclinks.DynamicLink;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.ha1;
import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class L0 {
    public static String a(K0 k0) {
        try {
            return Base64.encodeToString(new JSONObject().put(DynamicLink.Builder.KEY_API_KEY, k0.a).put(RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, k0.b).put("reporterType", k0.c.getStringValue()).put("processID", k0.d).put("processSessionID", k0.e).put("errorEnvironment", k0.f).toString().getBytes(ha1.b), 0);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static K0 a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(new String(Base64.decode(str, 0), ha1.b));
            return new K0(jSONObject.getString(DynamicLink.Builder.KEY_API_KEY), jSONObject.getString(RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME), CounterConfigurationReporterType.Companion.fromStringValue(jSONObject.getString("reporterType")), jSONObject.getInt("processID"), jSONObject.getString("processSessionID"), JsonUtils.optStringOrNull(jSONObject, "errorEnvironment"));
        } catch (Throwable unused) {
            return null;
        }
    }
}
