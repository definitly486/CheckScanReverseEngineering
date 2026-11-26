package com.posthog.internal;

import defpackage.jh2;
import defpackage.mx2;
import defpackage.ta8;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogFlagsRequest extends HashMap<String, Object> {
    public PostHogFlagsRequest(String str, String str2, String str3, String str4, Map<String, String> map, Map<String, ? extends Object> map2, Map<String, ? extends Map<String, ? extends Object>> map3, List<String> list, List<String> list2, boolean z) {
        str.getClass();
        str2.getClass();
        put("api_key", str);
        put("distinct_id", str2);
        put("timezone", TimeZone.getDefault().getID());
        if (str3 != null && !ta8.M(str3)) {
            put("$anon_distinct_id", str3);
        }
        if (str4 != null && !ta8.M(str4)) {
            put("$device_id", str4);
        }
        mx2 mx2Var = mx2.b;
        put("groups", map == null ? mx2Var : map);
        if (map2 != null && (!map2.isEmpty())) {
            put("person_properties", map2);
        }
        put("group_properties", map3 == null ? mx2Var : map3);
        if (list != null && (!list.isEmpty())) {
            put("evaluation_contexts", list);
        }
        if (list2 != null && (!list2.isEmpty())) {
            put("flag_keys_to_evaluate", list2);
        }
        put("geoip_disable", Boolean.valueOf(z));
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Object>> entrySet() {
        return getEntries();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    public /* bridge */ Set<Map.Entry<String, Object>> getEntries() {
        return super.entrySet();
    }

    public /* bridge */ Set<String> getKeys() {
        return super.keySet();
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        return !(obj instanceof String) ? obj2 : getOrDefault((String) obj, obj2);
    }

    public /* bridge */ int getSize() {
        return super.size();
    }

    public /* bridge */ Collection<Object> getValues() {
        return super.values();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.HashMap, java.util.Map
    public final /* bridge */ boolean remove(Object obj, Object obj2) {
        if ((obj instanceof String) && obj2 != null) {
            return remove((String) obj, obj2);
        }
        return false;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<Object> values() {
        return getValues();
    }

    public /* bridge */ Object getOrDefault(String str, Object obj) {
        return super.getOrDefault((Object) str, obj);
    }

    public /* bridge */ boolean containsKey(String str) {
        return super.containsKey((Object) str);
    }

    public /* bridge */ Object get(String str) {
        return super.get((Object) str);
    }

    public /* bridge */ Object remove(String str) {
        return super.remove((Object) str);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final /* bridge */ Object remove(Object obj) {
        if (obj instanceof String) {
            return remove((String) obj);
        }
        return null;
    }

    public /* bridge */ boolean remove(String str, Object obj) {
        return super.remove((Object) str, obj);
    }

    public /* synthetic */ PostHogFlagsRequest(String str, String str2, String str3, String str4, Map map, Map map2, Map map3, List list, List list2, boolean z, int i, jh2 jh2Var) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4, (i & 16) != 0 ? null : map, (i & 32) != 0 ? null : map2, (i & 64) != 0 ? null : map3, (i & 128) != 0 ? null : list, (i & 256) != 0 ? null : list2, (i & 512) != 0 ? false : z);
    }
}
