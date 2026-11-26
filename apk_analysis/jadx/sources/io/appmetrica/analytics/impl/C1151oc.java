package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.Closeable;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.oc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1151oc implements M6 {
    public final Context a;
    public final String b;
    public final C1317un c;
    public final C1097ma d;
    public C1068l7 e;

    public C1151oc(Context context, String str, C1097ma c1097ma, C1317un c1317un) {
        this.a = context;
        this.b = str;
        this.d = c1097ma;
        this.c = c1317un;
    }

    @Override // io.appmetrica.analytics.impl.M6
    public final synchronized SQLiteDatabase a() {
        C1068l7 c1068l7;
        try {
            this.d.a();
            c1068l7 = new C1068l7(this.a, this.b, this.c, PublicLogger.getAnonymousInstance());
            this.e = c1068l7;
        } catch (Throwable unused) {
            return null;
        }
        return c1068l7.getWritableDatabase();
    }

    public C1151oc(Context context, String str, C1317un c1317un) {
        this(context, str, new C1097ma(str), c1317un);
    }

    @Override // io.appmetrica.analytics.impl.M6
    public final synchronized void a(SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable unused) {
            }
        }
        xo.a((Closeable) this.e);
        this.d.b();
        this.e = null;
    }
}
