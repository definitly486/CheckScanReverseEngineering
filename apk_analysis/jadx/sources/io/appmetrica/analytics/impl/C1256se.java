package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.me0;
import java.lang.reflect.Field;
import org.json.JSONObject;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.se, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1256se {
    public static final N9 a(C1256se c1256se, W9 w9, Object obj) {
        int i;
        c1256se.getClass();
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
        C1282te.b.getClass();
        JSONObject jSONObject = new JSONObject();
        for (Field field : obj.getClass().getFields()) {
            try {
                jSONObject.put(field.getName(), field.get(obj));
            } catch (Throwable unused) {
            }
        }
        n9.b = jSONObject.toString().getBytes(ha1.b);
        return n9;
    }
}
