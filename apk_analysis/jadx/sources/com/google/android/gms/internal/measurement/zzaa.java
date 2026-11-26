package com.google.android.gms.internal.measurement;

import com.google.common.collect.n;
import defpackage.n1;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaa {
    public static final n d = n.m(3, "_syn", "_err", "_el");
    public String a;
    public final long b;
    public final HashMap c;

    public zzaa(String str, long j, Map map) {
        this.a = str;
        this.b = j;
        HashMap map2 = new HashMap();
        this.c = map2;
        if (map != null) {
            map2.putAll(map);
        }
    }

    public static Object zzh(String str, Object obj, Object obj2) {
        if (d.contains(str) && (obj2 instanceof Double)) {
            return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
        }
        if (str.startsWith("_")) {
            if (!(obj instanceof String) && obj != null) {
                return obj;
            }
        } else if (!(obj instanceof Double)) {
            if (obj instanceof Long) {
                return Long.valueOf(Math.round(((Double) obj2).doubleValue()));
            }
            if (obj instanceof String) {
                return obj2.toString();
            }
        }
        return obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzaa)) {
            return false;
        }
        zzaa zzaaVar = (zzaa) obj;
        if (this.b == zzaaVar.b && this.a.equals(zzaaVar.a)) {
            return this.c.equals(zzaaVar.c);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.a.hashCode() * 31;
        long j = this.b;
        return this.c.hashCode() + ((iHashCode + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final String toString() {
        String str = this.a;
        String string = this.c.toString();
        int length = String.valueOf(str).length();
        long j = this.b;
        StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(j).length() + 9 + string.length() + 1);
        n1.d(sb, "Event{name='", str, "', timestamp=");
        sb.append(j);
        sb.append(", params=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }

    public final long zza() {
        return this.b;
    }

    public final String zzb() {
        return this.a;
    }

    public final void zzc(String str) {
        this.a = str;
    }

    public final void zzd(String str, Object obj) {
        HashMap map = this.c;
        if (obj == null) {
            map.remove(str);
        } else {
            map.put(str, zzh(str, map.get(str), obj));
        }
    }

    public final Object zze(String str) {
        HashMap map = this.c;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        return null;
    }

    public final Map zzf() {
        return this.c;
    }

    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final zzaa clone() {
        return new zzaa(this.a, this.b, new HashMap(this.c));
    }
}
