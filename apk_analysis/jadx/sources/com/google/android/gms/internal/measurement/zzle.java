package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzle {
    public final SimpleArrayMap a;

    public zzle(SimpleArrayMap simpleArrayMap) {
        this.a = simpleArrayMap;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        SimpleArrayMap simpleArrayMap = uri != null ? (SimpleArrayMap) this.a.get(uri.toString()) : null;
        if (simpleArrayMap == null) {
            return null;
        }
        return (String) simpleArrayMap.get(str3);
    }
}
