package io.appmetrica.analytics.impl;

import com.tapjoy.TJAdUnitConstants;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ja, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1019ja {
    public static boolean a(JSONObject jSONObject, String str, boolean z) {
        return ((Boolean) WrapUtils.getOrDefault(jSONObject.has(str) ? Boolean.valueOf(jSONObject.getJSONObject(str).getBoolean(TJAdUnitConstants.String.ENABLED)) : null, Boolean.valueOf(z))).booleanValue();
    }
}
