package com.tapjoy;

import android.content.SharedPreferences;
import defpackage.jg;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class TJPreferencesMigration {
    public final TJKeyValueStorage a;
    public final SharedPreferences b;
    public final Map c;
    public final List d;

    public TJPreferencesMigration(TJKeyValueStorage tJKeyValueStorage, SharedPreferences sharedPreferences, Map<String, String> map, List<String> list) {
        tJKeyValueStorage.getClass();
        sharedPreferences.getClass();
        map.getClass();
        list.getClass();
        this.a = tJKeyValueStorage;
        this.b = sharedPreferences;
        this.c = map;
        this.d = list;
    }

    public final void a(String str, Object obj) {
        Object string;
        if (this.b.contains(str)) {
            if (obj instanceof Boolean) {
                string = Boolean.valueOf(this.b.getBoolean(str, false));
            } else if (obj instanceof Float) {
                string = Float.valueOf(this.b.getFloat(str, 0.0f));
            } else if (obj instanceof Integer) {
                string = Integer.valueOf(this.b.getInt(str, 0));
            } else if (obj instanceof Long) {
                string = Long.valueOf(this.b.getLong(str, 0L));
            } else {
                string = obj instanceof String ? this.b.getString(str, null) : null;
            }
            String str2 = (String) this.c.get(str);
            if (str2 == null) {
                str2 = str;
            }
            if (string != null) {
                try {
                    boolean zContains = this.d.contains(str);
                    TJKeyValueStorage tJKeyValueStorage = this.a;
                    if (zContains) {
                        tJKeyValueStorage.setValue(str2, Double.valueOf(Double.parseDouble(string.toString())));
                    } else {
                        tJKeyValueStorage.setValue(str2, string);
                    }
                } catch (IllegalArgumentException unused) {
                    jg.f("Failed to migrate key: ", str);
                }
            }
            this.b.edit().remove(str).apply();
        }
    }

    public final void migrateAllKeysIfExists() {
        Map<String, ?> all = this.b.getAll();
        if (all != null) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (this.c.containsKey(entry.getKey())) {
                    String key = entry.getKey();
                    key.getClass();
                    a(key, entry.getValue());
                }
            }
        }
    }
}
