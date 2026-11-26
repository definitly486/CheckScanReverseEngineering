package com.google.android.gms.common.util;

import defpackage.n1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class MapUtils {
    public static void writeStringMapToJson(StringBuilder sb, HashMap<String, String> map) {
        sb.append("{");
        boolean z = true;
        for (String str : map.keySet()) {
            if (!z) {
                sb.append(StringUtils.COMMA);
            }
            String str2 = map.get(str);
            n1.d(sb, "\"", str, "\":");
            if (str2 == null) {
                sb.append("null");
            } else {
                n1.d(sb, "\"", str2, "\"");
            }
            z = false;
        }
        sb.append("}");
    }
}
