package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.me0;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1227rb {
    public static final N9 a(C1227rb c1227rb, W9 w9, JSONObject jSONObject) {
        int i;
        c1227rb.getClass();
        N9 n9 = new N9();
        switch (w9) {
            case UNKNOWN:
                i = 0;
                break;
            case APPSFLYER:
                i = 1;
                break;
            case ADJUST:
                i = 2;
                break;
            case KOCHAVA:
                i = 3;
                break;
            case TENJIN:
                i = 4;
                break;
            case AIRBRIDGE:
                i = 5;
                break;
            case SINGULAR:
                i = 6;
                break;
            default:
                me0.e();
                return null;
        }
        n9.a = i;
        n9.b = jSONObject.toString().getBytes(ha1.b);
        return n9;
    }
}
