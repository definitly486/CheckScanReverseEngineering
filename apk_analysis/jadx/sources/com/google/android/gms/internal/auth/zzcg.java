package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.tapjoy.TJKeyValueStorageKt;
import defpackage.a1b;
import defpackage.g0b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcg implements a1b {
    public static final ArrayMap h = new ArrayMap();
    public static final String[] zza = {TJKeyValueStorageKt.KEY, "value"};
    public final ContentResolver a;
    public final Uri b;
    public final Runnable c;
    public final g0b d;
    public final Object e;
    public volatile Map f;
    public final ArrayList g;

    public zzcg(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        g0b g0bVar = new g0b(this);
        this.d = g0bVar;
        this.e = new Object();
        this.g = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.a = contentResolver;
        this.b = uri;
        this.c = runnable;
        contentResolver.registerContentObserver(uri, false, g0bVar);
    }

    public static synchronized void a() {
        try {
            for (V v : h.values()) {
                v.a.unregisterContentObserver(v.d);
            }
            h.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzcg zza(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        zzcg zzcgVar;
        synchronized (zzcg.class) {
            ArrayMap arrayMap = h;
            zzcgVar = (zzcg) arrayMap.get(uri);
            if (zzcgVar == null) {
                try {
                    zzcg zzcgVar2 = new zzcg(contentResolver, uri, runnable);
                    try {
                        arrayMap.put(uri, zzcgVar2);
                    } catch (SecurityException unused) {
                    }
                    zzcgVar = zzcgVar2;
                } catch (SecurityException unused2) {
                }
            }
        }
        return zzcgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // defpackage.a1b
    public final /* bridge */ /* synthetic */ Object zzb(String str) {
        Map map;
        ?? r0;
        Map map2 = this.f;
        Map map3 = map2;
        if (map2 == null) {
            synchronized (this.e) {
                Map map4 = this.f;
                if (map4 != null) {
                    r0 = map4;
                } else {
                    StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map = (Map) zzcj.zza(new zzck() { // from class: com.google.android.gms.internal.auth.zzce
                                @Override // com.google.android.gms.internal.auth.zzck
                                public final Object zza() {
                                    zzcg zzcgVar = this.zza;
                                    Cursor cursorQuery = zzcgVar.a.query(zzcgVar.b, zzcg.zza, null, null, null);
                                    if (cursorQuery == null) {
                                        return Collections.EMPTY_MAP;
                                    }
                                    try {
                                        int count = cursorQuery.getCount();
                                        if (count == 0) {
                                            return Collections.EMPTY_MAP;
                                        }
                                        Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
                                        while (cursorQuery.moveToNext()) {
                                            arrayMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                                        }
                                        return arrayMap;
                                    } finally {
                                        cursorQuery.close();
                                    }
                                }
                            });
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            map = null;
                        }
                        this.f = map;
                        threadPolicyAllowThreadDiskReads = map;
                        r0 = threadPolicyAllowThreadDiskReads;
                    } catch (Throwable th) {
                        StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        throw th;
                    }
                }
            }
            map3 = r0;
        }
        if (map3 == 0) {
            map3 = Collections.EMPTY_MAP;
        }
        return (String) map3.get(str);
    }

    public final void zze() {
        synchronized (this.e) {
            this.f = null;
            zzdc.zzc();
        }
        synchronized (this) {
            try {
                Iterator it = this.g.iterator();
                while (it.hasNext()) {
                    ((zzch) it.next()).zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
