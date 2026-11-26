package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import defpackage.oza;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcb {
    public static HashMap b;
    public static Object g;
    public static final Uri zza = Uri.parse("content://com.google.android.gsf.gservices");
    public static final Uri zzb = Uri.parse("content://com.google.android.gsf.gservices/prefix");
    public static final Pattern zzc = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern zzd = Pattern.compile("^(0|false|f|off|no|n)$", 2);
    public static final AtomicBoolean a = new AtomicBoolean();
    public static final HashMap c = new HashMap(16, 1.0f);
    public static final HashMap d = new HashMap(16, 1.0f);
    public static final HashMap e = new HashMap(16, 1.0f);
    public static final HashMap f = new HashMap(16, 1.0f);
    public static final String[] h = new String[0];

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        synchronized (zzcb.class) {
            try {
                String str3 = null;
                if (b == null) {
                    a.set(false);
                    b = new HashMap(16, 1.0f);
                    g = new Object();
                    contentResolver.registerContentObserver(zza, true, new oza(null));
                } else if (a.getAndSet(false)) {
                    b.clear();
                    c.clear();
                    d.clear();
                    e.clear();
                    f.clear();
                    g = new Object();
                }
                Object obj = g;
                if (b.containsKey(str)) {
                    String str4 = (String) b.get(str);
                    if (str4 != null) {
                        str3 = str4;
                    }
                    return str3;
                }
                int length = h.length;
                Cursor cursorQuery = contentResolver.query(zza, null, null, new String[]{str}, null);
                if (cursorQuery != null) {
                    try {
                        if (!cursorQuery.moveToFirst()) {
                            synchronized (zzcb.class) {
                                try {
                                    if (obj == g) {
                                        b.put(str, null);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            cursorQuery.close();
                            return null;
                        }
                        String string = cursorQuery.getString(1);
                        cursorQuery.close();
                        if (string != null && string.equals(null)) {
                            string = null;
                        }
                        synchronized (zzcb.class) {
                            try {
                                if (obj == g) {
                                    b.put(str, string);
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (string != null) {
                            return string;
                        }
                    } catch (Throwable th3) {
                        cursorQuery.close();
                        throw th3;
                    }
                }
                return null;
            } catch (Throwable th4) {
                throw th4;
            }
        }
    }
}
