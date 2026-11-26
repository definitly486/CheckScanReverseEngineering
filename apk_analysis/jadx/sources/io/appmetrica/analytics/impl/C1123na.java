package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.aa4;
import defpackage.j59;
import defpackage.x07;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.na, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1123na {
    public static volatile C1123na c;
    public final Context a;
    public final HashMap b = new HashMap();

    public C1123na(Context context) {
        this.a = context;
    }

    public static final C1123na a(Context context) {
        if (c == null) {
            synchronized (x07.a(C1123na.class)) {
                try {
                    if (c == null) {
                        c = new C1123na(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C1123na c1123na = c;
        if (c1123na != null) {
            return c1123na;
        }
        aa4.j("INSTANCE");
        throw null;
    }

    public final synchronized J9 b(String str) {
        Object j9;
        try {
            HashMap map = this.b;
            j9 = map.get(str);
            if (j9 == null) {
                j9 = new J9(this.a, str);
                map.put(str, j9);
            }
        } catch (Throwable th) {
            throw th;
        }
        return (J9) j9;
    }

    public final synchronized void a(String str) {
        this.b.remove(str);
    }
}
