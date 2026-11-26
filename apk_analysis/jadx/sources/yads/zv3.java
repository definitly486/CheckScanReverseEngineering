package yads;

import defpackage.ra8;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class zv3 {
    public final p45 a = new p45();

    public final String a(String str, Map map) {
        Map mapSingletonMap;
        String strValueOf = String.valueOf(System.currentTimeMillis());
        map.getClass();
        if (map.isEmpty()) {
            mapSingletonMap = Collections.singletonMap("{CLIENT_TIME}", strValueOf);
            mapSingletonMap.getClass();
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap(map);
            linkedHashMap.put("{CLIENT_TIME}", strValueOf);
            mapSingletonMap = linkedHashMap;
        }
        this.a.getClass();
        for (Map.Entry entry : mapSingletonMap.entrySet()) {
            str = ra8.y(str, (String) entry.getKey(), (String) entry.getValue());
        }
        return str;
    }
}
