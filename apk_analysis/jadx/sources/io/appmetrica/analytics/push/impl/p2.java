package io.appmetrica.analytics.push.impl;

import defpackage.me0;
import io.appmetrica.analytics.push.lazypush.LazyPushTransformRule;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class p2 {
    public final HashMap a = new HashMap();

    public final String a(String str) {
        for (Map.Entry entry : this.a.entrySet()) {
            String strC = me0.c("[{]", (String) entry.getKey(), "[}]");
            if (str.matches(".*" + strC + ".*")) {
                str = str.replaceAll(strC, ((LazyPushTransformRule) entry.getValue()).getNewValue((String) entry.getKey()));
            }
        }
        return str;
    }
}
