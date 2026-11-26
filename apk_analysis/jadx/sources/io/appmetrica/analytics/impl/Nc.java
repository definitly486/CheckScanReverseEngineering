package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.kn1;
import defpackage.m05;
import defpackage.me0;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class Nc {
    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    public static final N9 a(Nc nc, W9 w9, Map map) {
        int i;
        Object value;
        nc.getClass();
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
        Oc.b.getClass();
        Set<Map.Entry> setEntrySet = map.entrySet();
        int iB = m05.b(kn1.q(setEntrySet, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Map.Entry entry : setEntrySet) {
            Object key = entry.getKey();
            if (entry.getValue() instanceof Number) {
                Object value2 = entry.getValue();
                value2.getClass();
                double dDoubleValue = ((Number) value2).doubleValue();
                if (Double.isInfinite(dDoubleValue) || Double.isNaN(dDoubleValue)) {
                    value = null;
                } else {
                    value = entry.getValue();
                }
            } else {
                value = entry.getValue();
            }
            linkedHashMap.put(key, value);
        }
        String string = new JSONObject(linkedHashMap).toString();
        if (string != null) {
            n9.b = string.getBytes(ha1.b);
        }
        return n9;
    }
}
